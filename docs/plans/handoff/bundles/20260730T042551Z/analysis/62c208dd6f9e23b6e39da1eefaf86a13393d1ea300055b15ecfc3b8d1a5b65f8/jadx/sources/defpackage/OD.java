package defpackage;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class OD {

    /* renamed from: do, reason: not valid java name */
    public final SharedPreferences f2597do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Executor f2600do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayDeque<String> f2599do = new ArrayDeque<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f2598do = "topic_operation_queue";

    /* renamed from: if, reason: not valid java name */
    public final String f2601if = ",";

    public OD(SharedPreferences sharedPreferences, Executor executor) {
        this.f2597do = sharedPreferences;
        this.f2600do = executor;
    }

    /* renamed from: do, reason: not valid java name */
    public static OD m1645do(SharedPreferences sharedPreferences, Executor executor) {
        OD od = new OD(sharedPreferences, executor);
        synchronized (od.f2599do) {
            od.f2599do.clear();
            String string = od.f2597do.getString(od.f2598do, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            if (!TextUtils.isEmpty(string) && string.contains(od.f2601if)) {
                String[] split = string.split(od.f2601if, -1);
                int length = split.length;
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        od.f2599do.add(str);
                    }
                }
            }
        }
        return od;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m1646for(String str) {
        boolean remove;
        synchronized (this.f2599do) {
            remove = this.f2599do.remove(str);
            if (remove) {
                this.f2600do.execute(new FE(this, 3));
            }
        }
        return remove;
    }

    /* renamed from: if, reason: not valid java name */
    public final String m1647if() {
        String peek;
        synchronized (this.f2599do) {
            peek = this.f2599do.peek();
        }
        return peek;
    }
}
