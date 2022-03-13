
#include "AECaptured.h"
//#import <Accelerate/Accelerate.h>
//
//CGFloat width = 0;
//CGFloat height = 0;
//
//@interface AECapturedTools () {
//    void *aRgbBuffer;
//}
//@end
//
//@implementation AECapturedTools
//
//- (instancetype)initWithFrame:(ARFrame*)frame {
//    if (self = [super init]) {
//        CVPixelBufferRef pixelBuffer = frame.capturedImage;
//
//        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
//        void *yData = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
////        size_t yHeight = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
//        size_t yWidth = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
//        size_t yPitch = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
//        if (width == 0) {
//            width = [UIScreen mainScreen].bounds.size.width;
//            height = [UIScreen mainScreen].bounds.size.height;
//        }
//        size_t yHeight = yWidth * width / height;
//        vImage_Buffer yImage = {yData, yHeight, yWidth, yPitch};
//        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
//
//        CVPixelBufferLockBaseAddress(pixelBuffer, 0);
//        void *cDate = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1);
//        size_t cHeight = CVPixelBufferGetHeightOfPlane(pixelBuffer, 1);
//        size_t cWidth = CVPixelBufferGetWidthOfPlane(pixelBuffer, 1);
//        size_t cBytesPerRow = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1);
//
//        vImage_Buffer cImage = {cDate, cHeight, cWidth, cBytesPerRow};
//        CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
//
//
//        CVPixelBufferRef outRef =NULL;
//        size_t aRgbPitch = yWidth *  4;
//        aRgbBuffer = malloc(yHeight *aRgbPitch);
//
//        CVPixelBufferCreateWithBytes(NULL, yWidth, yHeight, kCVPixelFormatType_32BGRA, aRgbBuffer, aRgbPitch, nil, nil, nil, &outRef); //yHeight
//
//        CVPixelBufferLockBaseAddress(outRef, 0);
//        void *oDate = CVPixelBufferGetBaseAddress(outRef);
//        size_t oHeight = CVPixelBufferGetHeight(outRef);
//        size_t oWidth = CVPixelBufferGetWidth(outRef);
//        size_t oBytesPerRow = CVPixelBufferGetBytesPerRow(outRef);
//        vImage_Buffer oImage = {oDate, oHeight, oWidth, oBytesPerRow};
//        CVPixelBufferUnlockBaseAddress(outRef, 0);
//
//        vImage_YpCbCrPixelRange pixelRange = {0, 128, 255, 255, 255, 1, 255, 0};
//
//        vImage_YpCbCrToARGB infoYpCbCrToARGB = {};
//        vImage_Error error = vImageConvert_YpCbCrToARGB_GenerateConversion(kvImage_YpCbCrToARGBMatrix_ITU_R_709_2, &pixelRange, &infoYpCbCrToARGB, kvImage420Yp8_CbCr8, kvImageARGB8888, kvImageNoFlags);
//        if (error != kvImageCVImageFormat_NoError) {
//            NSLog(@"%zd", error);
//        }
//
//        vImage_Error ToError = vImageConvert_420Yp8_CbCr8ToARGB8888(&yImage, &cImage, &oImage, &infoYpCbCrToARGB, nil, 255, kvImageNoFlags);
//        if (ToError != kvImageCVImageFormat_NoError) {
//            NSLog(@"%zd", ToError);
//        }
//        uint8_t permuteMap[4] = { 3, 2, 1, 0 };
//        vImagePermuteChannels_ARGB8888(&oImage, &oImage, permuteMap, 0);
//
//        self.rgbPixel = outRef;
//    }
//    return self;
//}
//
//- (void)deinit {
//    free(aRgbBuffer);
//    aRgbBuffer = NULL;
//}
//
//@end
