package defpackage;

import android.app.Activity;
import android.os.Bundle;
import androidx.appcompat.widget.Toolbar;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.codeless.CodelessManager;
import com.facebook.internal.FacebookWebFallbackDialog;
import com.facebook.internal.FileLruCache;
import com.google.android.material.search.SearchView;
import com.google.android.material.textfield.TextInputLayout;
import java.io.File;

/* loaded from: classes.dex */
public final /* synthetic */ class EH implements Runnable {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f766do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f767for;

    public /* synthetic */ EH(Object obj, int i) {
        this.f767for = i;
        this.f766do = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.f767for;
        Object obj = this.f766do;
        switch (i) {
            case 0:
                ((Toolbar) obj).m3501throw();
                break;
            case 1:
                UserDataStore.m5333setUserDataAndHash$lambda1((Bundle) obj);
                break;
            case 2:
                CodelessManager.m5347checkCodelessSession$lambda1((String) obj);
                break;
            case 3:
                FacebookWebFallbackDialog.m5407cancel$lambda0((FacebookWebFallbackDialog) obj);
                break;
            case 4:
                FileLruCache.m5419clearCache$lambda1((File[]) obj);
                break;
            case 5:
                ((SearchView) obj).m5860final();
                break;
            case 6:
                ((TextInputLayout) obj).f11639do.requestLayout();
                break;
            default:
                Activity activity = (Activity) obj;
                if (!C0301Jk.m1047break(activity)) {
                    C0301Jk.m1056this(activity, new RunnableC0651Zj(activity, 11));
                    break;
                } else {
                    C0301Jk.f1683new = false;
                    break;
                }
        }
    }
}
