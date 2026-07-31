package androidx.activity;

import androidx.appcompat.app.AppCompatActivity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ComponentActivity$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ AppCompatActivity f$0;

    public /* synthetic */ ComponentActivity$$ExternalSyntheticLambda0(AppCompatActivity appCompatActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = appCompatActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        AppCompatActivity appCompatActivity = this.f$0;
        switch (i) {
            case 0:
                appCompatActivity.invalidateOptionsMenu();
                break;
            default:
                ComponentActivity.$r8$lambda$vCwjfXDiSGcirCy4I008VOiJ_lw(appCompatActivity);
                break;
        }
    }
}
