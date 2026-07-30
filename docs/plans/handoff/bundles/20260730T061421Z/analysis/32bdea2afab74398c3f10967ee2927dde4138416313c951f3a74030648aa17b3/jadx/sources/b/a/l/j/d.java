package b.a.l.j;

import android.content.Context;
import android.content.Intent;
import androidx.activity.result.ActivityResult;

/* loaded from: classes.dex */
public final class d extends b {
    @Override // b.a.l.j.b
    public Intent a(Context context, Object obj) {
        return (Intent) obj;
    }

    @Override // b.a.l.j.b
    public Object c(int i, Intent intent) {
        return new ActivityResult(i, intent);
    }
}
