package androidx.camera.core;

import androidx.core.util.Consumer;
import androidx.core.view.MenuHostHelper;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class SessionConfig$$ExternalSyntheticLambda0 implements Consumer {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ SessionConfig$$ExternalSyntheticLambda0(int i) {
        this.$r8$classId = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003a, code lost:
    
        if ("Q2Q".equalsIgnoreCase(r4) == false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0351, code lost:
    
        if (r14.equalsIgnoreCase("Jio") != false) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0360, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0362, code lost:
    
        r13 = android.os.Build.BRAND;
        r13.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x036b, code lost:
    
        if (r13.equalsIgnoreCase("Samsung") == false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0382, code lost:
    
        if (r0.equalsIgnoreCase("Vivo") != false) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0384, code lost:
    
        r13 = android.os.Build.BRAND;
        r13.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x038d, code lost:
    
        if (r13.equalsIgnoreCase("Vivo") == false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0398, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03a1, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ControlZoomRatioRangeAssertionErrorQuirk.class, r2) == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x03a3, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.ControlZoomRatioRangeAssertionErrorQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x03ab, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk.isSamsungNote10PlusDevice;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x03b3, code lost:
    
        if (r0.equalsIgnoreCase("Tecno") != false) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x03b5, code lost:
    
        r13 = android.os.Build.BRAND;
        r13.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x03be, code lost:
    
        if (r13.equalsIgnoreCase("Tecno") == false) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x03c7, code lost:
    
        if (r0.equalsIgnoreCase("Tecno-mobile") != false) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x03cd, code lost:
    
        if (r13.equalsIgnoreCase("Tecno-mobile") == false) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x03d2, code lost:
    
        if (androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk.isSamsungNote10PlusDevice != false) goto L225;
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x03d6, code lost:
    
        if (androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk.isPocoX3ProDevice == false) goto L224;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x03d9, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x03e2, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk.class, r2) == false) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x03e4, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x03f2, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x03f4, code lost:
    
        r2 = android.os.Build.BRAND;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x03fd, code lost:
    
        if (r2.equalsIgnoreCase("Samsung") == false) goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x0404, code lost:
    
        if (r0.equalsIgnoreCase("Xiaomi") != false) goto L240;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x040a, code lost:
    
        if (r2.equalsIgnoreCase("Xiaomi") == false) goto L239;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x040d, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x0416, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopWithSessionProcessorQuirk.class, r2) == false) goto L244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x0418, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.DisableAbortCapturesOnStopWithSessionProcessorQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x0420, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.FlashAvailabilityBufferUnderflowQuirk.KNOWN_AFFECTED_MODELS;
        r15 = java.util.Locale.US;
        r15.getClass();
        r7 = r0.toLowerCase(r15);
        r7.getClass();
        r15 = r11.toLowerCase(r15);
        r15.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0444, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.FlashAvailabilityBufferUnderflowQuirk.class, r2.contains(new androidx.camera.camera2.compat.quirk.FlashAvailabilityBufferUnderflowQuirk.DeviceInfo(r7, r15))) == false) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0446, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.FlashAvailabilityBufferUnderflowQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x0456, code lost:
    
        if (androidx.camera.camera2.compat.quirk.ImageCapturePixelHDRPlusQuirk.BUILD_MODELS.contains(r11) == false) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x045c, code lost:
    
        if (r0.equalsIgnoreCase("Google") != false) goto L253;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x045e, code lost:
    
        r2 = android.os.Build.BRAND;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:216:0x0467, code lost:
    
        if (r2.equalsIgnoreCase("Google") == false) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:218:0x046b, code lost:
    
        if (r10 < 26) goto L256;
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x046d, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x0476, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ImageCapturePixelHDRPlusQuirk.class, r2) == false) goto L260;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x0478, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.ImageCapturePixelHDRPlusQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x0480, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.InvalidVideoProfilesQuirk.AFFECTED_PIXEL_MODELS;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0488, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x048a, code lost:
    
        r2 = android.os.Build.BRAND;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:226:0x0493, code lost:
    
        if (r2.equalsIgnoreCase("Samsung") == false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:227:0x04a2, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.InvalidVideoProfilesQuirk.AFFECTED_PIXEL_MODELS;
        r15 = r11.toLowerCase(r12);
        r15.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x04af, code lost:
    
        if (r2.contains(r15) == false) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x04b1, code lost:
    
        r2 = android.os.Build.ID;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x04ba, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r2, "TP1A", true) != false) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x04bc, code lost:
    
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x04c5, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r2, "TD1A", true) == false) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:233:0x0532, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x053b, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.InvalidVideoProfilesQuirk.class, r2) == false) goto L307;
     */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x053d, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.InvalidVideoProfilesQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:0x0549, code lost:
    
        if (androidx.core.util.DebugUtils.isOnePlus6$camera_camera2() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:240:0x054f, code lost:
    
        if (androidx.core.util.DebugUtils.isOnePlus6T$camera_camera2() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x0555, code lost:
    
        if (androidx.core.util.DebugUtils.isHuaweiP20Lite$camera_camera2() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:244:0x055b, code lost:
    
        if (androidx.core.util.DebugUtils.isSamsungJ7PrimeApi27Above$camera_camera2() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:246:0x0561, code lost:
    
        if (androidx.core.util.DebugUtils.isSamsungJ7Api27Above$camera_camera2() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:248:0x0567, code lost:
    
        if (androidx.core.util.DebugUtils.isRedmiNote9Pro$camera_camera2() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:250:0x056d, code lost:
    
        if (androidx.core.util.DebugUtils.isSamsungA05s$camera_camera2() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0573, code lost:
    
        if (androidx.core.util.DebugUtils.isNokia7Plus$camera_camera2() != false) goto L327;
     */
    /* JADX WARN: Code restructure failed: missing block: B:254:0x0579, code lost:
    
        if (androidx.core.util.DebugUtils.isSamsungZFold4$camera_camera2() == false) goto L326;
     */
    /* JADX WARN: Code restructure failed: missing block: B:255:0x057c, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x0585, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ExcludedSupportedSizesQuirk.class, r2) == false) goto L331;
     */
    /* JADX WARN: Code restructure failed: missing block: B:258:0x0587, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.ExcludedSupportedSizesQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:259:0x058f, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk.SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:260:0x059b, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk.class, androidx.room.util.RelationUtil.isSamsungDistortion$camera_camera2()) == false) goto L334;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x059d, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.ExtraCroppingQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:263:0x05ab, code lost:
    
        if (r0.equalsIgnoreCase("Motorola") != false) goto L338;
     */
    /* JADX WARN: Code restructure failed: missing block: B:264:0x05ad, code lost:
    
        r4 = android.os.Build.BRAND;
        r4.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:265:0x05b6, code lost:
    
        if (r4.equalsIgnoreCase("Motorola") == false) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x05c2, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:268:0x05c9, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ExtraSupportedOutputSizeQuirk.class, r2) == false) goto L345;
     */
    /* JADX WARN: Code restructure failed: missing block: B:269:0x05cb, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.ExtraSupportedOutputSizeQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x05d3, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.ExtraSupportedSurfaceCombinationsQuirk.FULL_LEVEL_YUV_PRIV_YUV_CONFIGURATION;
        r2 = android.os.Build.DEVICE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x05dd, code lost:
    
        if ("heroqltevzw".equalsIgnoreCase(r2) != false) goto L356;
     */
    /* JADX WARN: Code restructure failed: missing block: B:273:0x05e5, code lost:
    
        if ("heroqltetmo".equalsIgnoreCase(r2) == false) goto L350;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x05ec, code lost:
    
        if (com.fsck.k9.sasl.OAuthBearer.supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2() != false) goto L356;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x05f2, code lost:
    
        if (com.fsck.k9.sasl.OAuthBearer.supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2() == false) goto L355;
     */
    /* JADX WARN: Code restructure failed: missing block: B:278:0x05f5, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x05fe, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ExtraSupportedSurfaceCombinationsQuirk.class, r4) == false) goto L360;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x0600, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.ExtraSupportedSurfaceCombinationsQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x0608, code lost:
    
        r4 = androidx.camera.camera2.compat.quirk.Nexus4AndroidLTargetAspectRatioQuirk.$r8$clinit;
     */
    /* JADX WARN: Code restructure failed: missing block: B:283:0x060e, code lost:
    
        if (r0.equalsIgnoreCase("Google") != false) goto L363;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0610, code lost:
    
        r4 = android.os.Build.BRAND;
        r4.getClass();
        r4.equalsIgnoreCase("Google");
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x061f, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.Nexus4AndroidLTargetAspectRatioQuirk.class, false) == false) goto L366;
     */
    /* JADX WARN: Code restructure failed: missing block: B:287:0x0621, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.Nexus4AndroidLTargetAspectRatioQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:288:0x0629, code lost:
    
        r4 = androidx.camera.camera2.compat.quirk.PreviewPixelHDRnetQuirk.SUPPORTED_DEVICES;
     */
    /* JADX WARN: Code restructure failed: missing block: B:289:0x062f, code lost:
    
        if (r0.equalsIgnoreCase("Google") != false) goto L370;
     */
    /* JADX WARN: Code restructure failed: missing block: B:290:0x0631, code lost:
    
        r4 = android.os.Build.BRAND;
        r4.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:291:0x063a, code lost:
    
        if (r4.equalsIgnoreCase("Google") == false) goto L373;
     */
    /* JADX WARN: Code restructure failed: missing block: B:292:0x0657, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:294:0x065e, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.PreviewPixelHDRnetQuirk.class, r2) == false) goto L377;
     */
    /* JADX WARN: Code restructure failed: missing block: B:295:0x0660, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.PreviewPixelHDRnetQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:297:0x066e, code lost:
    
        if (r0.equalsIgnoreCase("Huawei") != false) goto L381;
     */
    /* JADX WARN: Code restructure failed: missing block: B:298:0x0670, code lost:
    
        r4 = android.os.Build.BRAND;
        r4.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:299:0x0679, code lost:
    
        if (r4.equalsIgnoreCase("Huawei") == false) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004d, code lost:
    
        if ("OP4E75L1".equalsIgnoreCase(android.os.Build.DEVICE) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:300:0x0685, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:302:0x068c, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.RepeatingStreamConstraintForVideoRecordingQuirk.class, r2) == false) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:303:0x068e, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.RepeatingStreamConstraintForVideoRecordingQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:305:0x069a, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L392;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x069c, code lost:
    
        r2 = android.os.Build.BRAND;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x06a5, code lost:
    
        if (r2.equalsIgnoreCase("Samsung") == false) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:308:0x06b9, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:310:0x06c0, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.StillCaptureFlashStopRepeatingQuirk.class, r10) == false) goto L399;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x06c2, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.StillCaptureFlashStopRepeatingQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:312:0x06ca, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.TorchIsClosedAfterImageCapturingQuirk.BUILD_MODELS;
        r4 = r11.toLowerCase(r12);
        r4.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x06dd, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.TorchIsClosedAfterImageCapturingQuirk.class, r2.contains(r4)) == false) goto L402;
     */
    /* JADX WARN: Code restructure failed: missing block: B:314:0x06df, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.TorchIsClosedAfterImageCapturingQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:315:0x06e7, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.SurfaceOrderQuirk.BUILD_HARDWARE_SET;
     */
    /* JADX WARN: Code restructure failed: missing block: B:316:0x06ed, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L406;
     */
    /* JADX WARN: Code restructure failed: missing block: B:317:0x06ef, code lost:
    
        r2 = android.os.Build.BRAND;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x06f8, code lost:
    
        if (r2.equalsIgnoreCase("Samsung") == false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:319:0x0717, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:321:0x071e, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.SurfaceOrderQuirk.class, r10) == false) goto L413;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x0720, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.SurfaceOrderQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x072f, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.CaptureSessionOnClosedNotCalledQuirk.class, false) == false) goto L416;
     */
    /* JADX WARN: Code restructure failed: missing block: B:325:0x0731, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.CaptureSessionOnClosedNotCalledQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x0739, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.ZslDisablerQuirk.AFFECTED_SAMSUNG_MODEL;
     */
    /* JADX WARN: Code restructure failed: missing block: B:327:0x073f, code lost:
    
        if (r0.equalsIgnoreCase("Samsung") != false) goto L420;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0741, code lost:
    
        r2 = android.os.Build.BRAND;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:329:0x074a, code lost:
    
        if (r2.equalsIgnoreCase("Samsung") == false) goto L423;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0759, code lost:
    
        if (r0.equalsIgnoreCase("Xiaomi") != false) goto L427;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x075b, code lost:
    
        r0 = android.os.Build.BRAND;
        r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:333:0x0764, code lost:
    
        if (r0.equalsIgnoreCase("Xiaomi") == false) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x076f, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0776, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.ZslDisablerQuirk.class, r6) == false) goto L434;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0778, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.ZslDisablerQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x0780, code lost:
    
        r0 = androidx.camera.camera2.compat.quirk.SmallDisplaySizeQuirk.MODEL_TO_DISPLAY_SIZE_MAP;
        r2 = r11.toUpperCase(r12);
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:339:0x0793, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.SmallDisplaySizeQuirk.class, r0.containsKey(r2)) == false) goto L437;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0060, code lost:
    
        if ("Q706F".equalsIgnoreCase(android.os.Build.DEVICE) != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x0795, code lost:
    
        r9.add(new androidx.camera.camera2.compat.quirk.SmallDisplaySizeQuirk());
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x07a5, code lost:
    
        if (r1.shouldEnableQuirk(androidx.camera.camera2.compat.quirk.PreviewUnderExposureQuirk.class, androidx.camera.camera2.compat.quirk.PreviewUnderExposureQuirk.isTclDevice) == false) goto L440;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x07a7, code lost:
    
        r9.add(androidx.camera.camera2.compat.quirk.PreviewUnderExposureQuirk.INSTANCE);
     */
    /* JADX WARN: Code restructure failed: missing block: B:344:0x07ac, code lost:
    
        androidx.camera.camera2.compat.quirk.DeviceQuirks.all = new androidx.camera.core.impl.Quirks(r9);
        androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.d("DeviceQuirks", "camera2 DeviceQuirks = ".concat(androidx.camera.core.impl.Quirks.toString(androidx.camera.camera2.compat.quirk.DeviceQuirks.getAll())));
     */
    /* JADX WARN: Code restructure failed: missing block: B:345:0x07c2, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x076c, code lost:
    
        if (androidx.room.util.SchemaInfoUtilKt.isAffectedModel(androidx.camera.camera2.compat.quirk.ZslDisablerQuirk.AFFECTED_XIAOMI_MODEL) == false) goto L430;
     */
    /* JADX WARN: Code restructure failed: missing block: B:349:0x0752, code lost:
    
        if (androidx.room.util.SchemaInfoUtilKt.isAffectedModel(androidx.camera.camera2.compat.quirk.ZslDisablerQuirk.AFFECTED_SAMSUNG_MODEL) == false) goto L423;
     */
    /* JADX WARN: Code restructure failed: missing block: B:350:0x06fa, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.SurfaceOrderQuirk.BUILD_HARDWARE_SET;
        r4 = android.os.Build.HARDWARE;
        r4.getClass();
        r7 = java.util.Locale.getDefault();
        r7.getClass();
        r4 = r4.toLowerCase(r7);
        r4.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:351:0x0713, code lost:
    
        if (r2.contains(r4) == false) goto L409;
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0715, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:353:0x06a7, code lost:
    
        r2 = r11.toUpperCase(r12);
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x06b5, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r2, "SM-A716", false) == false) goto L395;
     */
    /* JADX WARN: Code restructure failed: missing block: B:355:0x06b7, code lost:
    
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x0681, code lost:
    
        if ("mha-l29".equalsIgnoreCase(r11) == false) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:358:0x0683, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x063c, code lost:
    
        r4 = androidx.camera.camera2.compat.quirk.PreviewPixelHDRnetQuirk.SUPPORTED_DEVICES;
        r2.getClass();
        r7 = java.util.Locale.getDefault();
        r7.getClass();
        r2 = r2.toLowerCase(r7);
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:360:0x0653, code lost:
    
        if (r4.contains(r2) == false) goto L373;
     */
    /* JADX WARN: Code restructure failed: missing block: B:361:0x0655, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x05f7, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x05be, code lost:
    
        if ("moto e5 play".equalsIgnoreCase(r11) == false) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x05c0, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x057e, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x04cf, code lost:
    
        if (r0.equalsIgnoreCase("Redmi") != false) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x04d1, code lost:
    
        r15 = android.os.Build.BRAND;
        r15.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x04da, code lost:
    
        if (r15.equalsIgnoreCase("Redmi") == false) goto L279;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x04dd, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x04e4, code lost:
    
        if (r0.equalsIgnoreCase("Xiaomi") != false) goto L287;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x04e6, code lost:
    
        r15 = android.os.Build.BRAND;
        r15.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x04ef, code lost:
    
        if (r15.equalsIgnoreCase("Xiaomi") == false) goto L286;
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x04f2, code lost:
    
        r15 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x04f6, code lost:
    
        if ((r2 | r15) == false) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x04f8, code lost:
    
        r2 = android.os.Build.ID;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x0503, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r2, "TKQ1", true) != false) goto L302;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0505, code lost:
    
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:382:0x050c, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r2, "TP1A", true) == false) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x050f, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.InvalidVideoProfilesQuirk.AFFECTED_OPPO_MODELS;
        r14 = r11.toLowerCase(r12);
        r14.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x051c, code lost:
    
        if (r2.contains(r14) == false) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:385:0x051e, code lost:
    
        if (r10 != 33) goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0521, code lost:
    
        r2 = androidx.camera.camera2.compat.quirk.InvalidVideoProfilesQuirk.AFFECTED_ONE_PLUS_MODELS;
        r14 = r11.toLowerCase(r12);
        r14.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x052e, code lost:
    
        if (r2.contains(r14) == false) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x0530, code lost:
    
        if (r10 != 33) goto L303;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0534, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x04f4, code lost:
    
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x04df, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0495, code lost:
    
        r2 = android.os.Build.ID;
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x049e, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r2, "TP1A", true) == false) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x046f, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x040f, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x03db, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0395, code lost:
    
        if (r11.equalsIgnoreCase("VIVO 2039") == false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x039a, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x0373, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r11, "SM-A025", true) != false) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x037b, code lost:
    
        if (r11.equalsIgnoreCase("SM-S124DL") == false) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x0359, code lost:
    
        if (kotlin.text.StringsKt__StringsJVMKt.startsWith(r11, "LS1542QW", true) != false) goto L205;
     */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0333  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0093  */
    @Override // androidx.core.util.Consumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void accept(java.lang.Object r17) {
        /*
            Method dump skipped, instructions count: 2008
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.core.SessionConfig$$ExternalSyntheticLambda0.accept(java.lang.Object):void");
    }

    public /* synthetic */ SessionConfig$$ExternalSyntheticLambda0(MenuHostHelper menuHostHelper, int i) {
        this.$r8$classId = i;
    }
}
