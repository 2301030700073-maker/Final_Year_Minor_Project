package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class KV {

    /* renamed from: do, reason: not valid java name */
    public final Context f1819do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f1820do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final TreeMap f1821do = new TreeMap();

    /* renamed from: for, reason: not valid java name */
    public String f1822for;

    /* renamed from: if, reason: not valid java name */
    public String f1823if;

    /* renamed from: new, reason: not valid java name */
    public final String f1824new;

    public KV(Context context, String str) {
        String concat;
        this.f1819do = context.getApplicationContext();
        this.f1820do = str;
        String packageName = context.getPackageName();
        try {
            concat = packageName + "-" + Wrappers.packageManager(context).getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            zzo.zzh("Unable to get package version name for reporting", e);
            concat = String.valueOf(packageName).concat("-missing");
        }
        this.f1824new = concat;
    }
}
