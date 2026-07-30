package com.google.android.apps.nexuslauncher.qsb;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.LauncherApps;
import android.content.pm.ResolveInfo;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.Utilities;
import com.android.quickstep.inputconsumers.AssistantInputConsumer;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.google.android.apps.nexuslauncher.qsb.AssistantIconView;

/* loaded from: classes.dex */
public class AssistantIconView extends View implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public Drawable f3305a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f3306b;

    public AssistantIconView(Context context) {
        this(context, null);
    }

    public static void b(AssistantIconView assistantIconView, View view) {
        boolean equals;
        Context context = assistantIconView.getContext();
        if (assistantIconView.f3306b) {
            ContentResolver contentResolver = context.getContentResolver();
            String string = Settings.Secure.getString(contentResolver, "assistant");
            boolean z = false;
            if (TextUtils.isEmpty(string)) {
                String string2 = Settings.Secure.getString(contentResolver, "voice_interaction_service");
                if (TextUtils.isEmpty(string2)) {
                    ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.ASSIST"), 65536);
                    equals = resolveActivity != null ? "com.google.android.googlequicksearchbox".equals(resolveActivity.resolvePackageName) : false;
                } else {
                    equals = "com.google.android.googlequicksearchbox".equals(ComponentName.unflattenFromString(string2).getPackageName());
                }
            } else {
                equals = "com.google.android.googlequicksearchbox".equals(ComponentName.unflattenFromString(string).getPackageName());
            }
            if (equals) {
                Bundle bundle = new Bundle();
                bundle.putInt(AssistantInputConsumer.OPA_BUNDLE_TRIGGER, 37);
                bundle.putInt(AssistantInputConsumer.INVOCATION_TYPE_KEY, 4);
                z = ActivityManagerWrapper.getInstance().showVoiceSession(null, bundle, 5);
            }
            if (z) {
                return;
            }
        }
        try {
            context.startActivity(new Intent("android.intent.action.VOICE_ASSIST").addFlags(268468224).setPackage("com.google.android.googlequicksearchbox"));
        } catch (ActivityNotFoundException unused) {
            ((LauncherApps) context.getSystemService(LauncherApps.class)).startAppDetailsActivity(new ComponentName("com.google.android.googlequicksearchbox", ".SearchActivity"), Process.myUserHandle(), null, null);
        }
    }

    public final void a(SharedPreferences sharedPreferences) {
        boolean z = sharedPreferences.getBoolean("opa_enabled", true);
        this.f3306b = z;
        this.f3305a = getContext().getDrawable(z ? R.drawable.ic_poodle_color : R.drawable.ic_mic_color);
        c();
    }

    public final void c() {
        Drawable drawable = this.f3305a;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth() / 2;
            int intrinsicHeight = this.f3305a.getIntrinsicHeight() / 2;
            int width = getWidth() / 2;
            int height = getHeight() / 2;
            this.f3305a.setBounds(width - intrinsicWidth, height - intrinsicHeight, width + intrinsicWidth, height + intrinsicHeight);
        }
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Utilities.getDevicePrefs(getContext()).registerOnSharedPreferenceChangeListener(this);
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        Utilities.getDevicePrefs(getContext()).unregisterOnSharedPreferenceChangeListener(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = this.f3305a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("opa_enabled".equals(str)) {
            a(sharedPreferences);
            invalidate();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        c();
    }

    public AssistantIconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AssistantIconView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(Utilities.getDevicePrefs(context));
        setOnClickListener(new View.OnClickListener() { // from class: c.b.a.b.b.l.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AssistantIconView.b(AssistantIconView.this, view);
            }
        });
    }
}
