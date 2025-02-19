import { BadRequestException } from '@nestjs/common';
import pkg from 'src/../../package.json';

const [major, minor, patch] = pkg.version.split('.');

export interface IServerVersion {
  major: number;
  minor: number;
  patch: number;
}

export const serverVersion: IServerVersion = {
  major: Number(major),
  minor: Number(minor),
  patch: Number(patch),
};

export const SERVER_VERSION = `${serverVersion.major}.${serverVersion.minor}.${serverVersion.patch}`;

export const APP_MEDIA_LOCATION = process.env.IMMICH_MEDIA_LOCATION || './upload';

export const MACHINE_LEARNING_URL = process.env.IMMICH_MACHINE_LEARNING_URL || 'http://immich-machine-learning:3003';
export const MACHINE_LEARNING_ENABLED = MACHINE_LEARNING_URL !== 'false';

export function assertMachineLearningEnabled() {
  if (!MACHINE_LEARNING_ENABLED) {
    throw new BadRequestException('Machine learning is not enabled.');
  }
}

const validMimeTypes = [
  'image/avif',
  'image/cr3',
  'image/gif',
  'image/heic',
  'image/heif',
  'image/jpeg',
  'image/jxl',
  'image/png',
  'image/dng',
  'image/tiff',
  'image/webp',
  'image/x-adobe-dng',
  'image/x-arriflex-ari',
  'image/x-canon-cr2',
  'image/x-canon-cr3',
  'image/x-canon-crw',
  'image/x-epson-erf',
  'image/x-fuji-raf',
  'image/x-hasselblad-3fr',
  'image/x-hasselblad-fff',
  'image/x-kodak-dcr',
  'image/x-kodak-k25',
  'image/x-kodak-kdc',
  'image/x-leica-rwl',
  'image/x-minolta-mrw',
  'image/x-nikon-nef',
  'image/x-olympus-orf',
  'image/x-olympus-ori',
  'image/x-panasonic-raw',
  'image/x-pentax-pef',
  'image/x-phantom-cin',
  'image/x-phaseone-cap',
  'image/x-phaseone-iiq',
  'image/x-samsung-srw',
  'image/x-sigma-x3f',
  'image/x-sony-arw',
  'image/x-sony-sr2',
  'image/x-sony-srf',
  'image/dng',
  'image/ari',
  'image/cr2',
  'image/cr3',
  'image/crw',
  'image/erf',
  'image/raf',
  'image/3fr',
  'image/fff',
  'image/dcr',
  'image/k25',
  'image/kdc',
  'image/rwl',
  'image/mrw',
  'image/nef',
  'image/orf',
  'image/ori',
  'image/raw',
  'image/pef',
  'image/cin',
  'image/cap',
  'image/iiq',
  'image/srw',
  'image/x3f',
  'image/arw',
  'image/sr2',
  'image/srf',
  'video/3gpp',
  'video/mp2t',
  'video/mp4',
  'video/mpeg',
  'video/quicktime',
  'video/webm',
  'video/x-flv',
  'video/x-matroska',
  'video/x-ms-wmv',
  'video/x-msvideo',
];

export function isSupportedFileType(mimetype: string): boolean {
  return validMimeTypes.includes(mimetype);
}

export function isSidecarFileType(mimeType: string): boolean {
  return ['application/xml', 'text/xml'].includes(mimeType);
}
