package defpackage;

import com.facebook.internal.Utility;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AbstractC0533Ub;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: Zb, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0643Zb {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0182Eb f4874do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0495Sh f4875do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AtomicInteger f4876do = new AtomicInteger(0);

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3200kD f4877do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Charset f4873do = Charset.forName("UTF-8");

    /* renamed from: do, reason: not valid java name */
    public static final int f4869do = 15;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0577Wb f4871do = new C0577Wb();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0599Xb f4872do = new Comparator() { // from class: Xb
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return ((File) obj2).getName().compareTo(((File) obj).getName());
        }
    };

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C0204Fb f4870do = new C0204Fb(1);

    public C0643Zb(C0495Sh c0495Sh, C2856hD c2856hD, C0182Eb c0182Eb) {
        this.f4875do = c0495Sh;
        this.f4877do = c2856hD;
        this.f4874do = c0182Eb;
    }

    /* renamed from: do, reason: not valid java name */
    public static void m3052do(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m3053new(File file) {
        byte[] bArr = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f4873do);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m3054try(File file, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f4873do);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m3055for(AbstractC0533Ub.Ctry.Cnew cnew, String str, boolean z) {
        C0495Sh c0495Sh = this.f4875do;
        int i = ((C2856hD) this.f4877do).m6781if().f12449do.f12454do;
        f4871do.getClass();
        try {
            m3054try(c0495Sh.m2184if(str, Cif.m6908case("event", String.format(Locale.US, "%010d", Integer.valueOf(this.f4876do.getAndIncrement())), z ? "_" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)), C0577Wb.f4389do.m7396do(cnew));
        } catch (IOException unused) {
        }
        FilenameFilter filenameFilter = new FilenameFilter() { // from class: Yb
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return str2.startsWith("event") && !str2.endsWith("_");
            }
        };
        c0495Sh.getClass();
        File file = new File(c0495Sh.f3537for, str);
        file.mkdirs();
        List<File> m2182try = C0495Sh.m2182try(file.listFiles(filenameFilter));
        Collections.sort(m2182try, new C3166jg(1));
        int size = m2182try.size();
        for (File file2 : m2182try) {
            if (size <= i) {
                return;
            }
            C0495Sh.m2181new(file2);
            size--;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final ArrayList m3056if() {
        ArrayList arrayList = new ArrayList();
        C0495Sh c0495Sh = this.f4875do;
        arrayList.addAll(C0495Sh.m2182try(c0495Sh.f3540try.listFiles()));
        arrayList.addAll(C0495Sh.m2182try(c0495Sh.f3534case.listFiles()));
        C0599Xb c0599Xb = f4872do;
        Collections.sort(arrayList, c0599Xb);
        List m2182try = C0495Sh.m2182try(c0495Sh.f3539new.listFiles());
        Collections.sort(m2182try, c0599Xb);
        arrayList.addAll(m2182try);
        return arrayList;
    }
}
