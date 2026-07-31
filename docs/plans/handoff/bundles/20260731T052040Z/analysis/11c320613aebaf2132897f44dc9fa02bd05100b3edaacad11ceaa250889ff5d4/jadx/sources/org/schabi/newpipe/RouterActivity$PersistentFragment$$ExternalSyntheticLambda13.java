package org.schabi.newpipe;

import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import io.reactivex.rxjava3.functions.Cancellable;
import io.reactivex.rxjava3.internal.disposables.CancellableDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.operators.single.SingleCreate$Emitter;
import java.util.function.Consumer;
import org.schabi.newpipe.RouterActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class RouterActivity$PersistentFragment$$ExternalSyntheticLambda13 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ AppCompatActivity f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ RouterActivity$PersistentFragment$$ExternalSyntheticLambda13(RouterActivity.PersistentFragment persistentFragment, AppCompatActivity appCompatActivity, SingleCreate$Emitter singleCreate$Emitter) {
        this.$r8$classId = 0;
        this.f$0 = persistentFragment;
        this.f$1 = appCompatActivity;
        this.f$2 = singleCreate$Emitter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        AppCompatActivity appCompatActivity = this.f$1;
        Object obj = this.f$2;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                final Toast makeText = Toast.makeText(appCompatActivity, ((RouterActivity.PersistentFragment) obj2).getString(R.string.processing_may_take_a_moment), 1);
                makeText.show();
                DisposableHelper.set((SingleCreate$Emitter) obj, new CancellableDisposable(new Cancellable() { // from class: org.schabi.newpipe.RouterActivity$PersistentFragment$$ExternalSyntheticLambda18
                    @Override // io.reactivex.rxjava3.functions.Cancellable
                    public final void cancel() {
                        makeText.cancel();
                    }
                }));
                break;
            case 1:
                ((Consumer) obj).s(appCompatActivity);
                ((RouterActivity.PersistentFragment) obj2).inFlight(false);
                break;
            default:
                ((Consumer) obj).s(appCompatActivity);
                RouterActivity.PersistentFragment.this.inFlight(false);
                break;
        }
    }

    public /* synthetic */ RouterActivity$PersistentFragment$$ExternalSyntheticLambda13(Object obj, Consumer consumer, AppCompatActivity appCompatActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$2 = consumer;
        this.f$1 = appCompatActivity;
    }
}
