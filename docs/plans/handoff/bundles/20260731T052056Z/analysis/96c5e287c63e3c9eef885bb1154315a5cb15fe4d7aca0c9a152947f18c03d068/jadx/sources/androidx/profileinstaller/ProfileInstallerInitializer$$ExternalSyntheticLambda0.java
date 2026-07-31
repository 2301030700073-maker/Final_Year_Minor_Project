package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.appcompat.app.AppCompatDelegate$$ExternalSyntheticLambda0;
import androidx.profileinstaller.ProfileInstallerInitializer;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;
import java.util.Random;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                ((Task$$ExternalSyntheticLambda0) obj).run();
                break;
        }
    }

    public /* synthetic */ ProfileInstallerInitializer$$ExternalSyntheticLambda0(Runnable runnable, int i) {
        this.$r8$classId = i;
        this.f$1 = runnable;
    }
}
