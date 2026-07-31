package androidx.camera.camera2.adapter;

import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.Quirks;
import androidx.datastore.preferences.protobuf.Utf8;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EncoderProfilesProviderAdapter implements EncoderProfilesProvider {
    public final int cameraId;
    public final String cameraIdString;
    public final Quirks cameraQuirks;
    public final boolean hasValidCameraId;
    public final LinkedHashMap mEncoderProfilesCache;

    public EncoderProfilesProviderAdapter(String str, Quirks quirks) {
        boolean z;
        int i;
        quirks.getClass();
        this.cameraIdString = str;
        this.cameraQuirks = quirks;
        this.mEncoderProfilesCache = new LinkedHashMap();
        try {
            i = Integer.parseInt(str);
            z = true;
        } catch (NumberFormatException unused) {
            Utf8.SafeProcessor.w("EncoderProfilesProviderAdapter", "Camera id is not an integer:  " + this.cameraIdString + ", unable to create EncoderProfilesProviderAdapter.");
            z = false;
            i = -1;
        }
        this.hasValidCameraId = z;
        this.cameraId = i;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:10|(6:12|(2:46|(1:48)(6:49|50|(1:52)(1:(1:54)(2:55|56))|(4:16|(2:41|(2:43|(3:20|(1:(2:23|(2:24|(2:26|(2:28|29)(1:30))(1:31))))(2:33|(1:(2:35|(2:38|39)(1:37))(1:40)))|32)))|18|(0))|44|45))|14|(0)|44|45)|60|61|(14:63|(1:65)|66|67|69|70|(2:72|(1:(1:75)(1:76)))(1:90)|77|78|80|81|(0)|44|45)|14|(0)|44|45) */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0087, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0088, code lost:
    
        androidx.datastore.preferences.protobuf.Utf8.SafeProcessor.w("EncoderProfilesProviderAdapter", "Unable to get CamcorderProfile by quality: " + r22, r0);
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0185  */
    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.camera.core.impl.AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy getAll(int r22) {
        /*
            Method dump skipped, instructions count: 508
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.camera.camera2.adapter.EncoderProfilesProviderAdapter.getAll(int):androidx.camera.core.impl.AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy");
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final boolean hasProfile(int i) {
        return this.hasValidCameraId && getAll(i) != null;
    }
}
