package c.b.a.c.d.j;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;

/* loaded from: classes.dex */
public final class x implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Intent f2982a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f2983b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2984c;

    public x(Intent intent, Activity activity, int i) {
        this.f2982a = intent;
        this.f2983b = activity;
        this.f2984c = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            Intent intent = this.f2982a;
            if (intent != null) {
                this.f2983b.startActivityForResult(intent, this.f2984c);
            }
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
