package defpackage;

import android.app.Activity;
import android.content.pm.PackageManager;
import androidx.activity.ComponentActivity;
import defpackage.K;

/* loaded from: classes.dex */
public final class J implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Activity f1577do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ String[] f1578do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f1579for;

    public J(ComponentActivity componentActivity, String[] strArr, int i) {
        this.f1578do = strArr;
        this.f1577do = componentActivity;
        this.f1579for = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        String[] strArr = this.f1578do;
        int[] iArr = new int[strArr.length];
        Activity activity = this.f1577do;
        PackageManager packageManager = activity.getPackageManager();
        String packageName = activity.getPackageName();
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            iArr[i] = packageManager.checkPermission(strArr[i], packageName);
        }
        ((K.Cnew) activity).onRequestPermissionsResult(this.f1579for, strArr, iArr);
    }
}
