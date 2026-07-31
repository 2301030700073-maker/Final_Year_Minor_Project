package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import androidx.appcompat.widget.PopupMenu$1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ActivityResultContract {
    public abstract Intent createIntent(Context context, Object obj);

    public PopupMenu$1 getSynchronousResult(Context context, Object obj) {
        return null;
    }

    public abstract Object parseResult(Intent intent, int i);
}
