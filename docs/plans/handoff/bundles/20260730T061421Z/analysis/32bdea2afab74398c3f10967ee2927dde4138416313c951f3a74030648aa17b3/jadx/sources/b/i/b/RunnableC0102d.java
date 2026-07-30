package b.i.b;

import android.annotation.SuppressLint;
import androidx.fragment.app.DialogFragment;

/* renamed from: b.i.b.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class RunnableC0102d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogFragment f889a;

    public RunnableC0102d(DialogFragment dialogFragment) {
        this.f889a = dialogFragment;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"SyntheticAccessor"})
    public void run() {
        DialogFragment dialogFragment = this.f889a;
        dialogFragment.mOnDismissListener.onDismiss(dialogFragment.mDialog);
    }
}
