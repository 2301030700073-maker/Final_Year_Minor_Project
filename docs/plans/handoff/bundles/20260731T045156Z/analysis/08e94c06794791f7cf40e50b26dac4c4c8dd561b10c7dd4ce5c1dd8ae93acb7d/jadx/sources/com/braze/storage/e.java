package com.braze.storage;

import android.content.Context;
import android.content.SharedPreferences;
import com.braze.coroutine.BrazeCoroutineScope;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;

/* loaded from: classes2.dex */
public final class e implements SharedPreferences {

    /* renamed from: a, reason: collision with root package name */
    public final Context f216a;
    public SharedPreferences b;
    public final Job c;

    public e(Context context) {
        Job launch$default;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter("persistent.com.appboy.storage.sdk_enabled_cache", "name");
        this.f216a = context;
        launch$default = BuildersKt__Builders_commonKt.launch$default(BrazeCoroutineScope.INSTANCE, null, null, new c(this, null), 3, null);
        this.c = launch$default;
    }

    public final void a() {
        if (!this.c.isCompleted()) {
            BuildersKt__BuildersKt.runBlocking$default(null, new d(this, null), 1, null);
        }
        this.b = this.f216a.getSharedPreferences("persistent.com.appboy.storage.sdk_enabled_cache", 0);
    }

    @Override // android.content.SharedPreferences
    public final boolean contains(String str) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.contains(str);
    }

    @Override // android.content.SharedPreferences
    public final SharedPreferences.Editor edit() {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        SharedPreferences.Editor edit = sharedPreferences.edit();
        Intrinsics.checkNotNullExpressionValue(edit, "edit(...)");
        return edit;
    }

    @Override // android.content.SharedPreferences
    public final Map getAll() {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        Map<String, ?> all = sharedPreferences.getAll();
        Intrinsics.checkNotNullExpressionValue(all, "getAll(...)");
        return all;
    }

    @Override // android.content.SharedPreferences
    public final boolean getBoolean(String str, boolean z) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getBoolean(str, z);
    }

    @Override // android.content.SharedPreferences
    public final float getFloat(String str, float f) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getFloat(str, f);
    }

    @Override // android.content.SharedPreferences
    public final int getInt(String str, int i) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getInt(str, i);
    }

    @Override // android.content.SharedPreferences
    public final long getLong(String str, long j) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getLong(str, j);
    }

    @Override // android.content.SharedPreferences
    public final String getString(String str, String str2) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getString(str, str2);
    }

    @Override // android.content.SharedPreferences
    public final Set getStringSet(String str, Set set) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        return sharedPreferences.getStringSet(str, set);
    }

    @Override // android.content.SharedPreferences
    public final void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }

    @Override // android.content.SharedPreferences
    public final void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        a();
        SharedPreferences sharedPreferences = this.b;
        if (sharedPreferences == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prefs");
            sharedPreferences = null;
        }
        sharedPreferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
    }
}
