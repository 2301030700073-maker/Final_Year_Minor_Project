package androidx.compose.foundation;

import android.view.View;
import android.widget.Magnifier;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PlatformMagnifierFactoryApi28Impl implements PlatformMagnifierFactory {
    public static final PlatformMagnifierFactoryApi28Impl INSTANCE = new PlatformMagnifierFactoryApi28Impl(0);
    public static final PlatformMagnifierFactoryApi28Impl INSTANCE$1 = new PlatformMagnifierFactoryApi28Impl(1);
    public final /* synthetic */ int $r8$classId;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class PlatformMagnifierImpl implements PlatformMagnifier {
        public final Magnifier magnifier;

        public PlatformMagnifierImpl(Magnifier magnifier) {
            this.magnifier = magnifier;
        }

        public final void dismiss() {
            this.magnifier.dismiss();
        }

        /* renamed from: getSize-YbymL2g, reason: not valid java name */
        public final long m144getSizeYbymL2g() {
            return (this.magnifier.getWidth() << 32) | (this.magnifier.getHeight() & 4294967295L);
        }

        @Override // androidx.compose.foundation.PlatformMagnifier
        /* renamed from: update-Wko1d7g */
        public void mo142updateWko1d7g(long j, long j2) {
            this.magnifier.show(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
        }

        public final void updateContent() {
            this.magnifier.update();
        }
    }

    public /* synthetic */ PlatformMagnifierFactoryApi28Impl(int i) {
        this.$r8$classId = i;
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    /* renamed from: create-nHHXs2Y */
    public final PlatformMagnifier mo143createnHHXs2Y(View view, Density density) {
        switch (this.$r8$classId) {
            case 0:
                return new PlatformMagnifierImpl(new Magnifier(view));
            default:
                return new PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl(new Magnifier(view));
        }
    }

    @Override // androidx.compose.foundation.PlatformMagnifierFactory
    public final boolean getCanUpdateZoom() {
        switch (this.$r8$classId) {
            case 0:
                return false;
            default:
                return true;
        }
    }
}
