package com.android.launcher3.secondarydisplay;

import android.content.ComponentName;
import android.content.SharedPreferences;
import android.os.Process;
import android.os.UserHandle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.AppInfoComparator;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.secondarydisplay.PinnedAppsAdapter;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* loaded from: classes.dex */
public class PinnedAppsAdapter extends BaseAdapter implements SharedPreferences.OnSharedPreferenceChangeListener {
    public final AllAppsStore mAllAppsList;
    public final AppInfoComparator mAppNameComparator;
    public final SecondaryDisplayLauncher mLauncher;
    public final View.OnClickListener mOnClickListener;
    public final View.OnLongClickListener mOnLongClickListener;
    public final SharedPreferences mPrefs;
    public final Set mPinnedApps = new HashSet();
    public final ArrayList mItems = new ArrayList();

    public class PinUnPinShortcut extends SystemShortcut {
        public final boolean mIsPinned;

        public PinUnPinShortcut(SecondaryDisplayLauncher secondaryDisplayLauncher, ItemInfo itemInfo, boolean z) {
            super(z ? R.drawable.ic_remove_no_shadow : R.drawable.ic_pin, z ? R.string.remove_drop_target_label : R.string.action_add_to_workspace, secondaryDisplayLauncher, itemInfo);
            this.mIsPinned = z;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (this.mIsPinned) {
                PinnedAppsAdapter pinnedAppsAdapter = PinnedAppsAdapter.this;
                ItemInfo itemInfo = this.mItemInfo;
                final Set set = pinnedAppsAdapter.mPinnedApps;
                Objects.requireNonNull(set);
                PinnedAppsAdapter.access$100(pinnedAppsAdapter, itemInfo, new Function() { // from class: c.a.a.T0.m
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Boolean.valueOf(set.remove((ComponentKey) obj));
                    }
                });
            } else {
                PinnedAppsAdapter pinnedAppsAdapter2 = PinnedAppsAdapter.this;
                ItemInfo itemInfo2 = this.mItemInfo;
                final Set set2 = pinnedAppsAdapter2.mPinnedApps;
                Objects.requireNonNull(set2);
                PinnedAppsAdapter.access$100(pinnedAppsAdapter2, itemInfo2, new Function() { // from class: c.a.a.T0.o
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return Boolean.valueOf(set2.add((ComponentKey) obj));
                    }
                });
            }
            AbstractFloatingView.closeAllOpenViews(PinnedAppsAdapter.this.mLauncher);
        }
    }

    public PinnedAppsAdapter(SecondaryDisplayLauncher secondaryDisplayLauncher, AllAppsStore allAppsStore, View.OnLongClickListener onLongClickListener) {
        this.mLauncher = secondaryDisplayLauncher;
        this.mOnClickListener = secondaryDisplayLauncher.getItemOnClickListener();
        this.mOnLongClickListener = onLongClickListener;
        this.mAllAppsList = allAppsStore;
        this.mPrefs = secondaryDisplayLauncher.getSharedPreferences("pinned_apps", 0);
        this.mAppNameComparator = new AppInfoComparator(secondaryDisplayLauncher);
        AllAppsStore allAppsStore2 = this.mAllAppsList;
        allAppsStore2.mUpdateListeners.add(new AllAppsStore.OnUpdateListener() { // from class: c.a.a.T0.g
            @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
            public final void onAppsUpdated() {
                PinnedAppsAdapter.this.createFilteredAppsList();
            }
        });
    }

    public static ComponentKey a(PinnedAppsAdapter pinnedAppsAdapter, String str) {
        UserHandle myUserHandle;
        Objects.requireNonNull(pinnedAppsAdapter);
        try {
            String[] split = str.split("#");
            if (split.length > 2) {
                MainThreadInitializedObject mainThreadInitializedObject = UserCache.INSTANCE;
                myUserHandle = ((UserCache) UserCache.INSTANCE.b(pinnedAppsAdapter.mLauncher)).getUserForSerialNumber(Long.parseLong(split[2]));
            } else {
                myUserHandle = Process.myUserHandle();
            }
            return new ComponentKey(ComponentName.unflattenFromString(split[0]), myUserHandle);
        } catch (Exception unused) {
            return null;
        }
    }

    public static void access$100(final PinnedAppsAdapter pinnedAppsAdapter, ItemInfo itemInfo, Function function) {
        Objects.requireNonNull(pinnedAppsAdapter);
        if (((Boolean) function.apply(new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user))).booleanValue()) {
            pinnedAppsAdapter.createFilteredAppsList();
            final HashSet hashSet = new HashSet(pinnedAppsAdapter.mPinnedApps);
            Executors.MODEL_EXECUTOR.submit(new Runnable() { // from class: c.a.a.T0.d
                @Override // java.lang.Runnable
                public final void run() {
                    final PinnedAppsAdapter pinnedAppsAdapter2 = PinnedAppsAdapter.this;
                    pinnedAppsAdapter2.mPrefs.edit().putStringSet("pinned_apps", (Set) hashSet.stream().map(new Function() { // from class: c.a.a.T0.f
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return PinnedAppsAdapter.b(PinnedAppsAdapter.this, (ComponentKey) obj);
                        }
                    }).collect(Collectors.toSet())).apply();
                }
            });
        }
    }

    public static String b(PinnedAppsAdapter pinnedAppsAdapter, ComponentKey componentKey) {
        Objects.requireNonNull(pinnedAppsAdapter);
        return componentKey.componentName.flattenToShortString() + "#" + ((UserCache) UserCache.INSTANCE.b(pinnedAppsAdapter.mLauncher)).getSerialNumberForUser(componentKey.user);
    }

    public final void createFilteredAppsList() {
        this.mItems.clear();
        Stream stream = this.mPinnedApps.stream();
        final AllAppsStore allAppsStore = this.mAllAppsList;
        Objects.requireNonNull(allAppsStore);
        Stream filter = stream.map(new Function() { // from class: c.a.a.T0.n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return AllAppsStore.this.getApp((ComponentKey) obj);
            }
        }).filter(new Predicate() { // from class: c.a.a.T0.c
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((AppInfo) obj);
            }
        });
        final ArrayList arrayList = this.mItems;
        Objects.requireNonNull(arrayList);
        filter.forEach(new Consumer() { // from class: c.a.a.T0.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((AppInfo) obj);
            }
        });
        this.mItems.sort(this.mAppNameComparator);
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mItems.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return (AppInfo) this.mItems.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        BubbleTextView bubbleTextView;
        if (view instanceof BubbleTextView) {
            bubbleTextView = (BubbleTextView) view;
        } else {
            bubbleTextView = (BubbleTextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_icon, viewGroup, false);
            bubbleTextView.setOnClickListener(this.mOnClickListener);
            bubbleTextView.setOnLongClickListener(this.mOnLongClickListener);
            bubbleTextView.mLongPressHelper.mLongPressTimeoutFactor = 1.0f;
            int i2 = this.mLauncher.getDeviceProfile().edgeMarginPx;
            bubbleTextView.setPadding(i2, i2, i2, i2);
        }
        bubbleTextView.applyFromApplicationInfo((AppInfo) this.mItems.get(i));
        return bubbleTextView;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String str) {
        if ("pinned_apps".equals(str)) {
            Executors.MODEL_EXECUTOR.submit(new Runnable() { // from class: c.a.a.T0.h
                @Override // java.lang.Runnable
                public final void run() {
                    final PinnedAppsAdapter pinnedAppsAdapter = PinnedAppsAdapter.this;
                    SharedPreferences sharedPreferences2 = sharedPreferences;
                    String str2 = str;
                    Objects.requireNonNull(pinnedAppsAdapter);
                    final Set set = (Set) sharedPreferences2.getStringSet(str2, Collections.emptySet()).stream().map(new Function() { // from class: c.a.a.T0.e
                        @Override // java.util.function.Function
                        public final Object apply(Object obj) {
                            return PinnedAppsAdapter.a(PinnedAppsAdapter.this, (String) obj);
                        }
                    }).filter(new Predicate() { // from class: c.a.a.T0.b
                        @Override // java.util.function.Predicate
                        public final boolean test(Object obj) {
                            return Objects.nonNull((ComponentKey) obj);
                        }
                    }).collect(Collectors.toSet());
                    Executors.MAIN_EXECUTOR.submit(new Runnable() { // from class: c.a.a.T0.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            PinnedAppsAdapter pinnedAppsAdapter2 = PinnedAppsAdapter.this;
                            Set set2 = set;
                            pinnedAppsAdapter2.mPinnedApps.clear();
                            pinnedAppsAdapter2.mPinnedApps.addAll(set2);
                            pinnedAppsAdapter2.createFilteredAppsList();
                        }
                    });
                }
            });
        }
    }
}
