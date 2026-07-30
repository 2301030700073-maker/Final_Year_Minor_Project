package com.google.android.apps.nexuslauncher;

import android.content.ComponentName;
import android.content.Context;
import com.android.launcher3.AppFilter;
import java.util.HashSet;

/* loaded from: classes.dex */
public class NexusAppFilter extends AppFilter {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f3287a;

    public NexusAppFilter(Context context) {
        HashSet hashSet = new HashSet();
        this.f3287a = hashSet;
        hashSet.add(ComponentName.unflattenFromString("com.google.android.googlequicksearchbox/.VoiceSearchActivity"));
        this.f3287a.add(ComponentName.unflattenFromString("com.google.android.apps.wallpaper/.picker.CategoryPickerActivity"));
        this.f3287a.add(ComponentName.unflattenFromString("com.google.android.as/com.google.android.apps.miphone.aiai.allapps.main.MainDummyActivity"));
    }

    @Override // com.android.launcher3.AppFilter
    public boolean shouldShowApp(ComponentName componentName) {
        return !this.f3287a.contains(componentName);
    }
}
