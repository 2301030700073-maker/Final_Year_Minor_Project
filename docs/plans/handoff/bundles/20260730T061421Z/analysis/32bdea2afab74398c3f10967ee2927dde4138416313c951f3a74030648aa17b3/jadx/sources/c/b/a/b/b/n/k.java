package c.b.a.b.b.n;

import android.content.Context;
import b.l.W;
import com.android.launcher3.Alarm;
import com.android.launcher3.OnAlarmListener;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    public final String f2761a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2762b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2763c;

    /* renamed from: d, reason: collision with root package name */
    public final Alarm f2764d = new Alarm();
    public l e;

    public k(Context context, String str, int i, int i2) {
        this.f2761a = str;
        this.f2762b = i;
        this.f2763c = i2;
        try {
            File[] listFiles = context.getCacheDir().listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    String name = file.getName();
                    if (file.isFile() && name.endsWith(".cdb") && name.startsWith(this.f2761a) && !name.endsWith(c())) {
                        file.delete();
                    }
                }
            }
            final File a2 = a(context);
            this.e = new l(a2);
            this.f2764d.mAlarmListener = new OnAlarmListener() { // from class: c.b.a.b.b.n.d
                @Override // com.android.launcher3.OnAlarmListener
                public final void onAlarm(Alarm alarm) {
                    k kVar = k.this;
                    l lVar = kVar.e;
                    if (lVar != null) {
                        lVar.close();
                    }
                    kVar.e = null;
                }
            };
        } catch (IOException unused) {
        }
    }

    public final File a(Context context) {
        File file = new File(context.getCacheDir(), c());
        if (file.exists()) {
            return file;
        }
        InputStream openRawResource = context.getResources().openRawResource(this.f2763c);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                W.copy(openRawResource, fileOutputStream);
                fileOutputStream.close();
                if (openRawResource != null) {
                    openRawResource.close();
                }
                return file;
            } finally {
            }
        } catch (Throwable th) {
            if (openRawResource != null) {
                try {
                    openRawResource.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public byte[] b(byte[] bArr) {
        byte[] a2;
        l lVar = this.e;
        synchronized (lVar) {
            lVar.f2767c = 0;
            a2 = lVar.a(bArr);
        }
        return a2;
    }

    public final String c() {
        return this.f2761a + this.f2762b + ".cdb";
    }

    public void d(int i) {
        this.f2764d.setAlarm(i);
    }
}
