package c.b.a.b.b.q;

import android.content.Context;
import android.util.Log;
import b.l.W;
import c.b.b.a1.e;
import java.io.FileNotFoundException;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2845a;

    public a(Context context) {
        this.f2845a = context.getApplicationContext();
    }

    public boolean a(String str, e eVar) {
        try {
            e.mergeFrom(eVar, W.toByteArray(this.f2845a.getFileStreamPath(str)));
            return true;
        } catch (FileNotFoundException unused) {
            Log.d("ProtoStore", "no cached data");
            return false;
        } catch (Exception e) {
            Log.e("ProtoStore", "unable to load data", e);
            return false;
        }
    }
}
