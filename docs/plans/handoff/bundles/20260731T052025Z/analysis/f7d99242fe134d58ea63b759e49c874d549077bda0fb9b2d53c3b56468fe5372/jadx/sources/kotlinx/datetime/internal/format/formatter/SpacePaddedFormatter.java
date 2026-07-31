package kotlinx.datetime.internal.format.formatter;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.InvalidationTracker$implementation$1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpacePaddedFormatter implements FormatterStructure {
    public final /* synthetic */ int $r8$classId = 1;
    public final Object formatter;
    public final int padding;

    public SpacePaddedFormatter(InvalidationTracker$implementation$1 invalidationTracker$implementation$1, int i) {
        this.formatter = invalidationTracker$implementation$1;
        this.padding = i;
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "The minimum number of digits (", ") is negative"));
            throw null;
        }
        if (i <= 9) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) CameraDevices$CC.m(i, "The minimum number of digits (", ") exceeds the length of an Int"));
        throw null;
    }

    @Override // kotlinx.datetime.internal.format.formatter.FormatterStructure
    public final void format(Object obj, StringBuilder sb, boolean z) {
        int i = this.$r8$classId;
        int i2 = 0;
        int i3 = this.padding;
        Object obj2 = this.formatter;
        switch (i) {
            case 0:
                StringBuilder sb2 = new StringBuilder();
                ((FormatterStructure) obj2).format(obj, sb2, z);
                String sb3 = sb2.toString();
                int length = i3 - sb3.length();
                while (i2 < length) {
                    sb.append(' ');
                    i2++;
                }
                sb.append((CharSequence) sb3);
                break;
            default:
                String valueOf = String.valueOf(((Number) ((InvalidationTracker$implementation$1) obj2).invoke(obj)).intValue());
                int length2 = i3 - valueOf.length();
                while (i2 < length2) {
                    sb.append('0');
                    i2++;
                }
                sb.append((CharSequence) valueOf);
                break;
        }
    }

    public SpacePaddedFormatter(FormatterStructure formatterStructure, int i) {
        this.formatter = formatterStructure;
        this.padding = i;
    }
}
