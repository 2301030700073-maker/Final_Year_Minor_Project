package com.android.launcher3.settings;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.text.Html;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceScreen;
import androidx.preference.SwitchPreference;
import b.l.AbstractC0157s;
import b.l.InterfaceC0155p;
import b.l.S;
import b.l.V;
import c.a.c.a.a;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.config.FlagTogglerPrefUi;
import com.android.launcher3.settings.DeveloperOptionsFragment;
import com.android.launcher3.uioverrides.plugins.PluginEnablerImpl;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.quickstep.interaction.TutorialFragment;
import com.android.systemui.shared.R;
import com.android.systemui.shared.plugins.PluginInstanceManager;
import com.android.systemui.shared.plugins.PluginManager;
import com.android.systemui.shared.plugins.PluginPrefs;
import com.android.systemui.shared.recents.ISystemUiProxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collectors;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class DeveloperOptionsFragment extends PreferenceFragmentCompat {
    public FlagTogglerPrefUi mFlagTogglerPrefUi;
    public final BroadcastReceiver mPluginReceiver = new BroadcastReceiver() { // from class: com.android.launcher3.settings.DeveloperOptionsFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DeveloperOptionsFragment.this.loadPluginPrefs();
        }
    };
    public PreferenceCategory mPluginsCategory;
    public PreferenceScreen mPreferenceScreen;

    public class PluginPreference extends SwitchPreference {
        public final List mComponentNames;
        public final boolean mHasSettings;
        public final String mPackageName;
        public final AbstractC0157s mPluginEnabler;

        public PluginPreference(Context context, ApplicationInfo applicationInfo, AbstractC0157s abstractC0157s, List list) {
            super(context, null);
            PackageManager packageManager = context.getPackageManager();
            boolean z = false;
            this.mHasSettings = packageManager.resolveActivity(new Intent("com.android.systemui.action.PLUGIN_SETTINGS").setPackage(applicationInfo.packageName), 0) != null;
            this.mPackageName = applicationInfo.packageName;
            this.mComponentNames = list;
            this.mPluginEnabler = abstractC0157s;
            setTitle(applicationInfo.loadLabel(packageManager));
            Iterator it = this.mComponentNames.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = true;
                    break;
                } else {
                    if (!this.mPluginEnabler.getBoolean(PluginManagerWrapper.pluginEnabledKey((ComponentName) it.next()), true)) {
                        break;
                    }
                }
            }
            setChecked(z);
            this.mWidgetLayoutResId = R.layout.switch_preference_with_settings;
        }

        @Override // androidx.preference.SwitchPreference, androidx.preference.Preference
        public void onBindViewHolder(V v) {
            super.onBindViewHolder(v);
            v.a(R.id.settings).setVisibility(this.mHasSettings ? 0 : 8);
            v.a(R.id.divider).setVisibility(this.mHasSettings ? 0 : 8);
            v.a(R.id.settings).setOnClickListener(new View.OnClickListener() { // from class: c.a.a.U0.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DeveloperOptionsFragment.PluginPreference pluginPreference = DeveloperOptionsFragment.PluginPreference.this;
                    Objects.requireNonNull(pluginPreference);
                    ResolveInfo resolveActivity = view.getContext().getPackageManager().resolveActivity(new Intent("com.android.systemui.action.PLUGIN_SETTINGS").setPackage(pluginPreference.mPackageName), 0);
                    if (resolveActivity != null) {
                        Context context = view.getContext();
                        Intent intent = new Intent();
                        ActivityInfo activityInfo = resolveActivity.activityInfo;
                        context.startActivity(intent.setComponent(new ComponentName(activityInfo.packageName, activityInfo.name)));
                    }
                }
            });
            v.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: c.a.a.U0.i
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    DeveloperOptionsFragment.PluginPreference pluginPreference = DeveloperOptionsFragment.PluginPreference.this;
                    Objects.requireNonNull(pluginPreference);
                    Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                    intent.setData(Uri.fromParts("package", pluginPreference.mPackageName, null));
                    pluginPreference.mContext.startActivity(intent);
                    return true;
                }
            });
        }

        @Override // androidx.preference.Preference
        public boolean persistBoolean(boolean z) {
            boolean z2 = false;
            for (ComponentName componentName : this.mComponentNames) {
                if (this.mPluginEnabler.getBoolean(PluginManagerWrapper.pluginEnabledKey(componentName), true) != z) {
                    this.mPluginEnabler.putBoolean(PluginEnablerImpl.pluginEnabledKey(componentName), z);
                    z2 = true;
                }
            }
            if (z2) {
                String str = this.mPackageName;
                this.mContext.sendBroadcast(new Intent(PluginManager.PLUGIN_CHANGED, str != null ? Uri.fromParts("package", str, null) : null));
            }
            setChecked(z);
            return true;
        }
    }

    public static /* synthetic */ ComponentName b(String str, Pair pair) {
        return new ComponentName(str, ((ServiceInfo) pair.second).name);
    }

    public static /* synthetic */ String c(Pair pair) {
        return (String) pair.first;
    }

    public /* synthetic */ void d(Context context, AbstractC0157s abstractC0157s, Pair pair, ArrayList arrayList) {
        final String str = (String) pair.first;
        List list = (List) arrayList.stream().map(new Function() { // from class: c.a.a.U0.c
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DeveloperOptionsFragment.b(str, (Pair) obj);
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            return;
        }
        PluginPreference pluginPreference = new PluginPreference(context, ((ServiceInfo) ((Pair) arrayList.get(0)).second).applicationInfo, abstractC0157s, list);
        StringBuilder f = a.f("Plugins: ");
        f.append((String) arrayList.stream().map(new Function() { // from class: c.a.a.U0.j
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return DeveloperOptionsFragment.c((Pair) obj);
            }
        }).collect(Collectors.joining(", ")));
        pluginPreference.setSummary(f.toString());
        this.mPluginsCategory.e(pluginPreference);
    }

    public /* synthetic */ boolean e(Intent intent, Preference preference) {
        startActivity(intent.putExtra(TutorialFragment.KEY_TUTORIAL_TYPE, "RIGHT_EDGE_BACK_NAVIGATION"));
        return true;
    }

    public /* synthetic */ boolean f(Intent intent, Preference preference) {
        startActivity(intent.putExtra(TutorialFragment.KEY_TUTORIAL_TYPE, "HOME_NAVIGATION"));
        return true;
    }

    public /* synthetic */ boolean g(Intent intent, Preference preference) {
        startActivity(intent.putExtra(TutorialFragment.KEY_TUTORIAL_TYPE, "OVERVIEW_NAVIGATION"));
        return true;
    }

    public /* synthetic */ boolean h(Intent intent, Preference preference) {
        startActivity(intent.putExtra(TutorialFragment.KEY_TUTORIAL_TYPE, "ASSISTANT"));
        return true;
    }

    public final void loadPluginPrefs() {
        PreferenceCategory preferenceCategory = this.mPluginsCategory;
        if (preferenceCategory != null) {
            this.mPreferenceScreen.k(preferenceCategory);
        }
        if (!PluginManagerWrapper.hasPlugins(getActivity())) {
            this.mPluginsCategory = null;
            return;
        }
        this.mPluginsCategory = newCategory("Plugins");
        PluginManagerWrapper pluginManagerWrapper = (PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(getContext());
        final Context context = getContext();
        PackageManager packageManager = getContext().getPackageManager();
        Set<String> pluginList = new PluginPrefs(pluginManagerWrapper.mContext).getPluginList();
        ArrayMap arrayMap = new ArrayMap();
        Set set = (Set) packageManager.getPackagesHoldingPermissions(new String[]{PluginInstanceManager.PLUGIN_PERMISSION}, 512).stream().map(new Function() { // from class: c.a.a.U0.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                String str;
                str = ((PackageInfo) obj).packageName;
                return str;
            }
        }).collect(Collectors.toSet());
        for (String str : pluginList) {
            String replace = str.replace("com.android.systemui.action.PLUGIN_", "").replace("com.android.launcher3.action.PLUGIN_", "");
            StringBuilder sb = new StringBuilder();
            for (String str2 : replace.split("_")) {
                if (sb.length() != 0) {
                    sb.append(' ');
                }
                sb.append(str2.substring(0, 1));
                sb.append(str2.substring(1).toLowerCase());
            }
            String sb2 = sb.toString();
            for (ResolveInfo resolveInfo : packageManager.queryIntentServices(new Intent(str), 512)) {
                String str3 = resolveInfo.serviceInfo.packageName;
                if (set.contains(str3)) {
                    Pair create = Pair.create(str3, resolveInfo.serviceInfo.processName);
                    if (!arrayMap.containsKey(create)) {
                        arrayMap.put(create, new ArrayList());
                    }
                    ((ArrayList) arrayMap.get(create)).add(Pair.create(sb2, resolveInfo.serviceInfo));
                }
            }
        }
        final PluginEnablerImpl pluginEnablerImpl = pluginManagerWrapper.mPluginEnabler;
        arrayMap.forEach(new BiConsumer() { // from class: c.a.a.U0.g
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                DeveloperOptionsFragment.this.d(context, pluginEnablerImpl, (Pair) obj, (ArrayList) obj2);
            }
        });
    }

    public final PreferenceCategory newCategory(String str) {
        PreferenceCategory preferenceCategory = new PreferenceCategory(getContext(), null);
        preferenceCategory.setOrder(Integer.MAX_VALUE);
        if (!TextUtils.equals(str, preferenceCategory.mTitle)) {
            preferenceCategory.mTitle = str;
            preferenceCategory.notifyChanged();
        }
        this.mPreferenceScreen.e(preferenceCategory);
        return preferenceCategory;
    }

    @Override // b.i.b.r
    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        FlagTogglerPrefUi flagTogglerPrefUi = this.mFlagTogglerPrefUi;
        if (flagTogglerPrefUi == null || !flagTogglerPrefUi.anyChanged()) {
            return;
        }
        menu.add(0, R.id.menu_apply_flags, 0, "Apply").setShowAsAction(2);
    }

    @Override // androidx.preference.PreferenceFragmentCompat
    public void onCreatePreferences(Bundle bundle, String str) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        getContext().registerReceiver(this.mPluginReceiver, intentFilter);
        getContext().registerReceiver(this.mPluginReceiver, new IntentFilter("android.intent.action.USER_UNLOCKED"));
        S s = this.mPreferenceManager;
        Context context = getContext();
        Objects.requireNonNull(s);
        PreferenceScreen preferenceScreen = new PreferenceScreen(context, null);
        preferenceScreen.onAttachedToHierarchy(s);
        this.mPreferenceScreen = preferenceScreen;
        setPreferenceScreen(preferenceScreen);
        if (FeatureFlags.showFlagTogglerUi(getContext())) {
            FlagTogglerPrefUi flagTogglerPrefUi = new FlagTogglerPrefUi(this);
            this.mFlagTogglerPrefUi = flagTogglerPrefUi;
            PreferenceCategory newCategory = newCategory("Feature flags");
            Iterator it = ((ArrayList) FeatureFlags.getDebugFlags()).iterator();
            while (it.hasNext()) {
                FeatureFlags.DebugFlag debugFlag = (FeatureFlags.DebugFlag) it.next();
                SwitchPreference switchPreference = new SwitchPreference(flagTogglerPrefUi.mContext, null);
                switchPreference.setKey(debugFlag.key);
                switchPreference.mDefaultValue = Boolean.valueOf(debugFlag.defaultValue);
                switchPreference.setChecked(flagTogglerPrefUi.mDataStore.getBoolean(debugFlag.key, debugFlag.defaultValue));
                switchPreference.setTitle(debugFlag.key);
                String str2 = "";
                String str3 = debugFlag.defaultValue ? "" : "<b>OVERRIDDEN</b><br>";
                if (debugFlag.defaultValue) {
                    str2 = "<b>OVERRIDDEN</b><br>";
                }
                StringBuilder f = a.f(str3);
                f.append(debugFlag.description);
                switchPreference.setSummaryOn(Html.fromHtml(f.toString()));
                switchPreference.setSummaryOff(Html.fromHtml(str2 + debugFlag.description));
                switchPreference.mPreferenceDataStore = flagTogglerPrefUi.mDataStore;
                newCategory.e(switchPreference);
            }
            flagTogglerPrefUi.mFragment.setHasOptionsMenu(flagTogglerPrefUi.anyChanged());
            flagTogglerPrefUi.mFragment.getActivity().invalidateOptionsMenu();
        }
        loadPluginPrefs();
        Context context2 = getContext();
        if (context2 == null) {
            return;
        }
        final Intent addFlags = new Intent("com.android.quickstep.action.GESTURE_SANDBOX").setPackage(context2.getPackageName()).addFlags(268435456);
        if (addFlags.resolveActivity(context2.getPackageManager()) == null) {
            return;
        }
        PreferenceCategory newCategory2 = newCategory("Gesture Navigation Sandbox");
        newCategory2.setSummary("Learn and practice navigation gestures");
        Preference preference = new Preference(context2);
        preference.setKey("launchBackTutorial");
        if (!TextUtils.equals("Launch Back Tutorial", preference.mTitle)) {
            preference.mTitle = "Launch Back Tutorial";
            preference.notifyChanged();
        }
        preference.setSummary("Learn how to use the Back gesture");
        preference.mOnClickListener = new InterfaceC0155p() { // from class: c.a.a.U0.a
            @Override // b.l.InterfaceC0155p
            public final boolean a(Preference preference2) {
                return DeveloperOptionsFragment.this.e(addFlags, preference2);
            }
        };
        newCategory2.e(preference);
        Preference preference2 = new Preference(context2);
        preference2.setKey("launchHomeTutorial");
        if (!TextUtils.equals("Launch Home Tutorial", preference2.mTitle)) {
            preference2.mTitle = "Launch Home Tutorial";
            preference2.notifyChanged();
        }
        preference2.setSummary("Learn how to use the Home gesture");
        preference2.mOnClickListener = new InterfaceC0155p() { // from class: c.a.a.U0.b
            @Override // b.l.InterfaceC0155p
            public final boolean a(Preference preference3) {
                return DeveloperOptionsFragment.this.f(addFlags, preference3);
            }
        };
        newCategory2.e(preference2);
        Preference preference3 = new Preference(context2);
        preference3.setKey("launchOverviewTutorial");
        if (!TextUtils.equals("Launch Overview Tutorial", preference3.mTitle)) {
            preference3.mTitle = "Launch Overview Tutorial";
            preference3.notifyChanged();
        }
        preference3.setSummary("Learn how to use the Overview gesture");
        preference3.mOnClickListener = new InterfaceC0155p() { // from class: c.a.a.U0.f
            @Override // b.l.InterfaceC0155p
            public final boolean a(Preference preference4) {
                return DeveloperOptionsFragment.this.g(addFlags, preference4);
            }
        };
        newCategory2.e(preference3);
        Preference preference4 = new Preference(context2);
        preference4.setKey("launchAssistantTutorial");
        if (!TextUtils.equals("Launch Assistant Tutorial", preference4.mTitle)) {
            preference4.mTitle = "Launch Assistant Tutorial";
            preference4.notifyChanged();
        }
        preference4.setSummary("Learn how to use the Assistant gesture");
        preference4.mOnClickListener = new InterfaceC0155p() { // from class: c.a.a.U0.e
            @Override // b.l.InterfaceC0155p
            public final boolean a(Preference preference5) {
                return DeveloperOptionsFragment.this.h(addFlags, preference5);
            }
        };
        newCategory2.e(preference4);
    }

    @Override // b.i.b.r
    public void onDestroy() {
        super.onDestroy();
        getContext().unregisterReceiver(this.mPluginReceiver);
    }

    @Override // b.i.b.r
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        FlagTogglerPrefUi flagTogglerPrefUi = this.mFlagTogglerPrefUi;
        if (flagTogglerPrefUi != null) {
            Objects.requireNonNull(flagTogglerPrefUi);
            if (menuItem.getItemId() == R.id.menu_apply_flags) {
                flagTogglerPrefUi.mSharedPreferences.edit().commit();
                Log.e("FlagTogglerPrefFrag", "Killing launcher process " + Process.myPid() + " to apply new flag values");
                System.exit(0);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.preference.PreferenceFragmentCompat, b.i.b.r
    public void onStop() {
        FlagTogglerPrefUi flagTogglerPrefUi = this.mFlagTogglerPrefUi;
        if (flagTogglerPrefUi != null && flagTogglerPrefUi.anyChanged()) {
            Toast.makeText(flagTogglerPrefUi.mContext, "Flag won't be applied until you restart launcher", 1).show();
        }
        super.onStop();
    }
}
