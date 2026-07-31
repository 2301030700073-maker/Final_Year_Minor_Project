package com.braze.images;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.braze.lrucache.j;
import com.braze.support.BrazeLogger;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.io.IOUtils;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final com.braze.lrucache.f f86a;

    public a(File file) {
        Pattern pattern = com.braze.lrucache.f.o;
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else if (!file2.renameTo(file3)) {
                throw new IOException();
            }
        }
        com.braze.lrucache.f fVar = new com.braze.lrucache.f(file);
        if (fVar.b.exists()) {
            try {
                fVar.c();
                fVar.b();
            } catch (IOException e) {
                BrazeLogger.w(com.braze.lrucache.f.p, "DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                synchronized (fVar) {
                    if (fVar.i != null) {
                        Iterator it = new ArrayList(fVar.j.values()).iterator();
                        while (it.hasNext()) {
                            com.braze.lrucache.d dVar = ((com.braze.lrucache.g) it.next()).d;
                            if (dVar != null) {
                                com.braze.lrucache.f.a(dVar.d, dVar, false);
                            }
                        }
                        while (fVar.h > fVar.f) {
                            fVar.d((String) ((Map.Entry) fVar.j.entrySet().iterator().next()).getKey());
                        }
                        fVar.i.close();
                        fVar.i = null;
                    }
                    j.a(fVar.f103a);
                }
            }
            Intrinsics.checkNotNullExpressionValue(fVar, "open(...)");
            this.f86a = fVar;
        }
        file.mkdirs();
        fVar = new com.braze.lrucache.f(file);
        fVar.d();
        Intrinsics.checkNotNullExpressionValue(fVar, "open(...)");
        this.f86a = fVar;
    }

    public static final String c(String str, String str2) {
        return "Failed to load image from disk cache: " + str + IOUtils.DIR_SEPARATOR_UNIX + str2;
    }

    public static final String d(String str, String str2) {
        return "Error while producing output stream or compressing bitmap for key " + str + " diskKey " + str2;
    }

    public final boolean a(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final String valueOf = String.valueOf(key.hashCode());
        try {
            com.braze.lrucache.e b = this.f86a.b(valueOf);
            boolean z = b != null;
            CloseableKt.closeFinally(b, null);
            return z;
        } catch (Throwable th) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.images.a$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.a(key, valueOf);
                }
            }, 4, (Object) null);
            return false;
        }
    }

    public final Bitmap b(final String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        final String valueOf = String.valueOf(key.hashCode());
        try {
            com.braze.lrucache.e b = this.f86a.b(valueOf);
            try {
                Bitmap decodeStream = BitmapFactory.decodeStream(b.f102a[0]);
                CloseableKt.closeFinally(b, null);
                return decodeStream;
            } finally {
            }
        } catch (Throwable th) {
            BrazeLogger brazeLogger = BrazeLogger.INSTANCE;
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.images.a$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.b(key, valueOf);
                }
            }, 4, (Object) null);
            BrazeLogger.brazelog$default(brazeLogger, (Object) this, (BrazeLogger.Priority) null, (Throwable) null, false, new Function0() { // from class: com.braze.images.a$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.c(key, valueOf);
                }
            }, 7, (Object) null);
            return null;
        }
    }

    public static final String a(String str, String str2) {
        return "Error while retrieving disk for key " + str + " diskKey " + str2;
    }

    public final void a(final String key, Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        final String valueOf = String.valueOf(key.hashCode());
        try {
            com.braze.lrucache.d a2 = this.f86a.a(valueOf);
            OutputStream a3 = a2.a();
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, a3);
                a3.flush();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(a3, null);
                if (a2.c) {
                    com.braze.lrucache.f.a(a2.d, a2, false);
                    a2.d.d(a2.f101a.f104a);
                } else {
                    com.braze.lrucache.f.a(a2.d, a2, true);
                }
            } finally {
            }
        } catch (Throwable th) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, th, false, new Function0() { // from class: com.braze.images.a$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return a.d(key, valueOf);
                }
            }, 4, (Object) null);
        }
    }

    public static final String b(String str, String str2) {
        return "Failed to get bitmap from disk cache for key " + str + " diskKey " + str2;
    }
}
