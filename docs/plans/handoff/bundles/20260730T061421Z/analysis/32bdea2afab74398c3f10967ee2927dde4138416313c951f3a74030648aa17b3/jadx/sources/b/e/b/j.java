package b.e.b;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public Context f670a;
    public CharSequence e;
    public CharSequence f;
    public PendingIntent g;
    public int h;
    public i j;
    public Bundle l;
    public String o;
    public boolean r;
    public Notification s;

    @Deprecated
    public ArrayList t;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f671b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f672c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f673d = new ArrayList();
    public boolean i = true;
    public boolean k = false;
    public int m = 0;
    public int n = 0;
    public int p = 0;
    public int q = 0;

    @Deprecated
    public j(Context context) {
        Notification notification = new Notification();
        this.s = notification;
        this.f670a = context;
        this.o = null;
        notification.when = System.currentTimeMillis();
        this.s.audioStreamType = -1;
        this.h = 0;
        this.t = new ArrayList();
        this.r = true;
    }

    public static CharSequence a(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }
}
