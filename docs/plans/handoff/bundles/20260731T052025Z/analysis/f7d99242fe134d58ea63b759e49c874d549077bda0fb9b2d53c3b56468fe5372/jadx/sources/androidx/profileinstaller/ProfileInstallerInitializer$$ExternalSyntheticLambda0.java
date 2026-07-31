package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0;
import androidx.profileinstaller.ProfileInstallerInitializer;
import java.util.Random;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ProfileInstallerInitializer$$ExternalSyntheticLambda0 implements Choreographer.FrameCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ ProfileInstallerInitializer$$ExternalSyntheticLambda0(ProfileInstallerInitializer profileInstallerInitializer, Context context) {
        this.$r8$classId = 0;
        this.f$1 = context;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        switch (i) {
            case 0:
                (Build.VERSION.SDK_INT >= 28 ? ProfileInstallerInitializer.Handler28Impl.createAsync(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new AppCompatDelegate$$ExternalSyntheticLambda0((Context) obj, 1), new Random().nextInt(Math.max(1000, 1)) + 5000);
                break;
            case 1:
                ((Runnable) obj).run();
                break;
            default:
                ((Runnable) obj).run();
                break;
        }
    }

    public /* synthetic */ ProfileInstallerInitializer$$ExternalSyntheticLambda0(int i, Runnable runnable) {
        this.$r8$classId = i;
        this.f$1 = runnable;
    }
}
