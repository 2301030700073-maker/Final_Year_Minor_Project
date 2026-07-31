package androidx.activity;

import androidx.camera.camera2.compat.quirk.AeFpsRangeLegacyQuirk;
import androidx.camera.camera2.pipe.CameraMetadata;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OnBackPressedDispatcher$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ OnBackPressedDispatcher$$ExternalSyntheticLambda0(CameraMetadata cameraMetadata, AeFpsRangeLegacyQuirk aeFpsRangeLegacyQuirk) {
        this.$r8$classId = 3;
        this.f$0 = cameraMetadata;
    }

    /* JADX WARN: Code restructure failed: missing block: B:225:0x04c9, code lost:
    
        if (r8.equalsIgnoreCase("Motorola") != false) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x04db, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x04dd, code lost:
    
        r8 = android.os.Build.BRAND;
        r8.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04e6, code lost:
    
        if (r8.equalsIgnoreCase("Samsung") == false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x04f8, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L262;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x04fa, code lost:
    
        r8 = android.os.Build.BRAND;
        r8.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0503, code lost:
    
        if (r8.equalsIgnoreCase("Samsung") == false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0514, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0516, code lost:
    
        r8 = android.os.Build.BRAND;
        r8.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x051f, code lost:
    
        if (r8.equalsIgnoreCase("Samsung") == false) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:0x0530, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x0532, code lost:
    
        r8 = android.os.Build.BRAND;
        r8.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x053b, code lost:
    
        if (r8.equalsIgnoreCase("Samsung") == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:243:0x054e, code lost:
    
        if (r12.equalsIgnoreCase("Xiaomi") != false) goto L283;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x0550, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0559, code lost:
    
        if (r9.equalsIgnoreCase("Xiaomi") == false) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0567, code lost:
    
        r8 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x056e, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.YuvImageOnePixelShiftQuirk.class, r8) == false) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x0570, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.YuvImageOnePixelShiftQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x057e, code lost:
    
        if (r12.equalsIgnoreCase("Huawei") != false) goto L294;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0580, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0589, code lost:
    
        if (r9.equalsIgnoreCase("Huawei") == false) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x059b, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L301;
     */
    /* JADX WARN: Code restructure failed: missing block: B:256:0x059d, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x05a6, code lost:
    
        if (r9.equalsIgnoreCase("Samsung") == false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x05b8, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L308;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x05ba, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x05c3, code lost:
    
        if (r9.equalsIgnoreCase("Samsung") == false) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x05d4, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x05d6, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x05df, code lost:
    
        if (r9.equalsIgnoreCase("Samsung") == false) goto L318;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x05f2, code lost:
    
        if (r12.equalsIgnoreCase("Oppo") != false) goto L322;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x05f4, code lost:
    
        r10 = android.os.Build.BRAND;
        r10.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x05fd, code lost:
    
        if (r10.equalsIgnoreCase("Oppo") == false) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x060e, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L329;
     */
    /* JADX WARN: Code restructure failed: missing block: B:272:0x0610, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x0619, code lost:
    
        if (r9.equalsIgnoreCase("Samsung") == false) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x0627, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:276:0x062e, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.PreviewStretchWhenVideoCaptureIsBoundQuirk.class, r9) == false) goto L336;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0630, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.PreviewStretchWhenVideoCaptureIsBoundQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x063c, code lost:
    
        if (r12.equalsIgnoreCase("Huawei") != false) goto L342;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x063e, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0647, code lost:
    
        if (r9.equalsIgnoreCase("Huawei") == false) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x064a, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0653, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.PreviewDelayWhenVideoCaptureIsBoundQuirk.class, r9) == false) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0655, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.PreviewDelayWhenVideoCaptureIsBoundQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0661, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0663, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x066c, code lost:
    
        if (r9.equalsIgnoreCase("Samsung") == false) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x067b, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0682, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk.class, r9) == false) goto L357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:293:0x0684, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.QuickSuccessiveImageCaptureFailsRepeatingRequestQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0690, code lost:
    
        if (androidx.appcompat.app.ActionBar.isBluStudioX10() != false) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x0696, code lost:
    
        if (androidx.appcompat.app.ActionBar.isItelW6004() != false) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x069c, code lost:
    
        if (androidx.appcompat.app.ActionBar.isVivo1805() != false) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:301:0x06a2, code lost:
    
        if (androidx.appcompat.app.ActionBar.isPositivoTwist2Pro() != false) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x06a4, code lost:
    
        r9 = android.os.Build.MODEL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x06ac, code lost:
    
        if ("pixel 4 xl".equalsIgnoreCase(r9) == false) goto L370;
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x06b2, code lost:
    
        if (android.os.Build.VERSION.SDK_INT != 29) goto L370;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x06b9, code lost:
    
        if (r12.equalsIgnoreCase("Motorola") != false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x06bb, code lost:
    
        r10 = android.os.Build.BRAND;
        r10.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:309:0x06c4, code lost:
    
        if (r10.equalsIgnoreCase("Motorola") == false) goto L377;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x06d3, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L381;
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x06d5, code lost:
    
        r1 = android.os.Build.BRAND;
        r1.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x06de, code lost:
    
        if (r1.equalsIgnoreCase("Samsung") == false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x06f7, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x06f9, code lost:
    
        r1 = android.os.Build.BRAND;
        r1.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x0702, code lost:
    
        if (r1.equalsIgnoreCase("Samsung") == false) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x0714, code lost:
    
        if (androidx.core.view.DisplayCompat.isUniSocChipsetDevice() == false) goto L396;
     */
    /* JADX WARN: Code restructure failed: missing block: B:320:0x0717, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0720, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ImageCaptureFailedWhenVideoCaptureIsBoundQuirk.class, r1) == false) goto L401;
     */
    /* JADX WARN: Code restructure failed: missing block: B:323:0x0722, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.ImageCaptureFailedWhenVideoCaptureIsBoundQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x072a, code lost:
    
        r1 = android.os.Build.MODEL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0732, code lost:
    
        if ("Pixel 8".equalsIgnoreCase(r1) == false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0734, code lost:
    
        r9 = android.hardware.camera2.CameraCharacteristics.LENS_FACING;
        r9.getClass();
        r9 = (java.lang.Integer) ((androidx.camera.camera2.pipe.compat.Camera2CameraMetadata) r6).get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x0742, code lost:
    
        if (r9 != null) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x0749, code lost:
    
        if (r9.intValue() != 0) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x074b, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0754, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.TemporalNoiseQuirk.class, r9) == false) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0756, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.TemporalNoiseQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x075e, code lost:
    
        r9 = androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk.PROBLEMATIC_UNI_SOC_MODELS;
        r1.getClass();
        r10 = r1.toLowerCase(java.util.Locale.ROOT);
        r10.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:335:0x0770, code lost:
    
        if (r9.contains(r10) != false) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0776, code lost:
    
        if (androidx.core.view.DisplayCompat.isUniSocChipsetDevice() != false) goto L425;
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x077c, code lost:
    
        if (r12.equalsIgnoreCase("Huawei") != false) goto L421;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x077e, code lost:
    
        r9 = android.os.Build.BRAND;
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:341:0x0787, code lost:
    
        if (r9.equalsIgnoreCase("Huawei") == false) goto L424;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0792, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x079b, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk.class, r1) == false) goto L429;
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x079d, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.ImageCaptureFailedForVideoSnapshotQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x07a9, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") != false) goto L433;
     */
    /* JADX WARN: Code restructure failed: missing block: B:348:0x07ab, code lost:
    
        r12 = android.os.Build.BRAND;
        r12.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x07b4, code lost:
    
        if (r12.equalsIgnoreCase("Samsung") == false) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x07c2, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x07c9, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk.class, r12) == false) goto L440;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x07cb, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.AbnormalStreamWhenImageAnalysisBindWithTemplateRecordQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x07d3, code lost:
    
        r12 = androidx.camera.camera2.compat.quirk.UltraWideFlashCaptureUnderexposureQuirk.BUILD_MODEL_PREFIXES;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x07d5, code lost:
    
        if (r12 == null) goto L445;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x07db, code lost:
    
        if (r12.isEmpty() == false) goto L445;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0819, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x081e, code lost:
    
        if (r0.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.UltraWideFlashCaptureUnderexposureQuirk.class, r3) == false) goto L460;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0820, code lost:
    
        r5.add(new androidx.camera.camera2.compat.quirk.UltraWideFlashCaptureUnderexposureQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x0828, code lost:
    
        r12 = new androidx.camera.core.impl.Quirks(r5);
        androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.d("CameraQuirks", "camera2 CameraQuirks = ".concat(androidx.camera.core.impl.Quirks.toString(r12)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:363:0x083c, code lost:
    
        return r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x07de, code lost:
    
        r12 = r12.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x07e6, code lost:
    
        if (r12.hasNext() == false) goto L520;
     */
    /* JADX WARN: Code restructure failed: missing block: B:367:0x07e8, code lost:
    
        r1 = (java.lang.String) r12.next();
        r7 = android.os.Build.MODEL;
        r7.getClass();
        r7 = r7.toLowerCase(java.util.Locale.ROOT);
        r7.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x0800, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r7, r1, false) == false) goto L521;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x0802, code lost:
    
        r12 = android.hardware.camera2.CameraCharacteristics.LENS_FACING;
        r12.getClass();
        r12 = (java.lang.Integer) ((androidx.camera.camera2.pipe.compat.Camera2CameraMetadata) r6).get(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x080f, code lost:
    
        if (r12 != null) goto L453;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x0816, code lost:
    
        if (r12.intValue() != 1) goto L456;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x07be, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.equals(android.os.Build.DEVICE, "m55xq", true) == false) goto L436;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x07c0, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x078f, code lost:
    
        if ("FIG-LX1".equalsIgnoreCase(r1) == false) goto L424;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0794, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x074d, code lost:
    
        r9 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0704, code lost:
    
        r9.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x070d, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r9, "SM-A536", false) == false) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x06e0, code lost:
    
        r1 = android.os.Build.DEVICE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x06e8, code lost:
    
        if ("gta8".equalsIgnoreCase(r1) != false) goto L397;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x06f0, code lost:
    
        if ("gta8wifi".equalsIgnoreCase(r1) == false) goto L386;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x06cc, code lost:
    
        if ("moto e13".equalsIgnoreCase(r9) == false) goto L377;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x0719, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x066e, code lost:
    
        androidx.camera.camera2.pipe.CameraMetadata.Companion.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0677, code lost:
    
        if (androidx.camera.camera2.pipe.CameraMetadata.Companion.isHardwareLevelLegacy(r6) == false) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0679, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x064c, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0623, code lost:
    
        if ("sm-j510fn".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L332;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0625, code lost:
    
        r9 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0607, code lost:
    
        if ("A37F".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x05e9, code lost:
    
        if ("sm-j111f".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L318;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x05cd, code lost:
    
        if ("sm-j700f".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x05b0, code lost:
    
        if ("sm-j320f".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L304;
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x0593, code lost:
    
        if ("HUAWEI ALE-L04".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L297;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x0563, code lost:
    
        if ("Mi A1".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x0565, code lost:
    
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x0545, code lost:
    
        if ("SM-J415F".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x0529, code lost:
    
        if ("SM-A920F".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L272;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x050d, code lost:
    
        if ("SM-J700F".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x04f0, code lost:
    
        if ("SM-G532F".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L258;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x04d3, code lost:
    
        if ("MotoG3".equalsIgnoreCase(android.os.Build.MODEL) == false) goto L251;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01aa, code lost:
    
        if (r1.equalsIgnoreCase("Samsung") != false) goto L93;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0351 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03af  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x040c  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0450  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04c0  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x04a2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0452  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x02c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01d4  */
    @Override // kotlin.jvm.functions.Function0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke() {
        /*
            Method dump skipped, instructions count: 2426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0.invoke():java.lang.Object");
    }

    public /* synthetic */ OnBackPressedDispatcher$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }
}
