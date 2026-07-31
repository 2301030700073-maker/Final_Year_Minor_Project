package leakcanary.internal;

import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Looper;
import java.util.EnumSet;
import kotlin.Metadata;
import kotlin.SynchronizedLazyImpl;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import leakcanary.AndroidLeakFixes;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lleakcanary/internal/PlumberInstaller;", "Landroid/content/ContentProvider;", "<init>", "()V", "plumber-android_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes.dex */
public final class PlumberInstaller extends ContentProvider {
    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        uri.getClass();
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        uri.getClass();
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        uri.getClass();
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        boolean z;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
            throw null;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.app.Application");
        }
        Application application = (Application) applicationContext;
        AndroidLeakFixes.Companion companion = AndroidLeakFixes.Companion;
        EnumSet<AndroidLeakFixes> allOf = EnumSet.allOf(AndroidLeakFixes.class);
        allOf.getClass();
        companion.getClass();
        SynchronizedLazyImpl synchronizedLazyImpl = HandlersKt.mainHandler$delegate;
        Looper mainLooper = Looper.getMainLooper();
        mainLooper.getClass();
        if (mainLooper.getThread() != Thread.currentThread()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Should be called from the main thread, not ", Thread.currentThread());
            return false;
        }
        for (AndroidLeakFixes androidLeakFixes : allOf) {
            z = androidLeakFixes.applied;
            if (!z) {
                androidLeakFixes.apply(application);
                androidLeakFixes.applied = true;
            }
        }
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        uri.getClass();
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        uri.getClass();
        return 0;
    }
}
