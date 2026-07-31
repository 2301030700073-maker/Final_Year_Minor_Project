package androidx.activity;

import androidx.appcompat.app.AppCompatActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
                ComponentActivity.onBackPressedDispatcher_delegate$lambda$0$0(appCompatActivity);
                break;
        }
    }
}
