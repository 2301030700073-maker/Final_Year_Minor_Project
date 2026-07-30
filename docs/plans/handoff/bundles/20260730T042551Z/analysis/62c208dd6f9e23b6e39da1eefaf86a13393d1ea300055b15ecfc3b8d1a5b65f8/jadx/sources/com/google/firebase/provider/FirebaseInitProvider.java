package com.google.firebase.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.C0706ai;
import defpackage.C3463oi;
import defpackage.C3721t4;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class FirebaseInitProvider extends ContentProvider {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3721t4 f11974do = new C3721t4(System.currentTimeMillis(), SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());

    /* renamed from: do, reason: not valid java name */
    public static final AtomicBoolean f11973do = new AtomicBoolean(false);

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        Preconditions.checkNotNull(providerInfo, "FirebaseInitProvider ProviderInfo cannot be null.");
        if ("com.google.firebase.firebaseinitprovider".equals(providerInfo.authority)) {
            throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
        }
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        try {
            AtomicBoolean atomicBoolean = f11973do;
            atomicBoolean.set(true);
            Context context = getContext();
            synchronized (C0706ai.f4983do) {
                if (C0706ai.f4982do.containsKey("[DEFAULT]")) {
                    C0706ai.m3146for();
                } else {
                    C3463oi m7716do = C3463oi.m7716do(context);
                    if (m7716do != null) {
                        C0706ai.m3145case(context, m7716do);
                    }
                }
            }
            atomicBoolean.set(false);
            return false;
        } catch (Throwable th) {
            f11973do.set(false);
            throw th;
        }
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
