package c.b.a.b.b.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.apps.nexuslauncher.graphics.IcuDateTextView;

/* loaded from: classes.dex */
public class b extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ IcuDateTextView f2578a;

    public b(IcuDateTextView icuDateTextView) {
        this.f2578a = icuDateTextView;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f2578a.c(!"android.intent.action.TIME_TICK".equals(intent.getAction()));
    }
}
