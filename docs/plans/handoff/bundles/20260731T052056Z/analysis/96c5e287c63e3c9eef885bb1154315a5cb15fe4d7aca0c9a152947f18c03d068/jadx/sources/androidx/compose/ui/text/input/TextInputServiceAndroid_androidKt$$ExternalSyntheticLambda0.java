package androidx.compose.ui.text.input;

import android.view.Choreographer;
import androidx.profileinstaller.ProfileInstallerInitializer$$ExternalSyntheticLambda0;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class TextInputServiceAndroid_androidKt$$ExternalSyntheticLambda0 implements Executor {
    public final /* synthetic */ Choreographer f$0;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f$0.postFrameCallback(new ProfileInstallerInitializer$$ExternalSyntheticLambda0(runnable, 1));
    }
}
