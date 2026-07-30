package b.i.b;

import android.app.Dialog;
import android.view.View;
import androidx.fragment.app.DialogFragment;

/* renamed from: b.i.b.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0110h extends A {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ A f901a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DialogFragment f902b;

    public C0110h(DialogFragment dialogFragment, A a2) {
        this.f902b = dialogFragment;
        this.f901a = a2;
    }

    @Override // b.i.b.A
    public View b(int i) {
        Dialog dialog = this.f902b.mDialog;
        View findViewById = dialog != null ? dialog.findViewById(i) : null;
        if (findViewById != null) {
            return findViewById;
        }
        if (this.f901a.c()) {
            return this.f901a.b(i);
        }
        return null;
    }

    @Override // b.i.b.A
    public boolean c() {
        return this.f902b.mDialogCreated || this.f901a.c();
    }
}
