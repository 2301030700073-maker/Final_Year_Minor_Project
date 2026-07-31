package org.schabi.newpipe.local.subscription.dialog;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import com.evernote.android.state.Injector;
import java.util.HashMap;
import java.util.HashSet;
import org.schabi.newpipe.local.subscription.FeedGroupIcon;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class FeedGroupDialog$$StateSaver<T extends FeedGroupDialog> extends Injector.Object<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.local.subscription.dialog.FeedGroupDialog$$StateSaver", hashMap);
    }

    @Override // com.evernote.android.state.Injector.Object
    public void restore(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        t.currentScreen = (FeedGroupDialog.ScreenState) injectionHelper.getSerializable(bundle, "currentScreen");
        t.iconsListState = injectionHelper.getParcelable(bundle, "iconsListState");
        t.selectedIcon = (FeedGroupIcon) injectionHelper.getSerializable(bundle, "selectedIcon");
        t.selectedSubscriptions = (HashSet) injectionHelper.getSerializable(bundle, "selectedSubscriptions");
        t.subscriptionsCurrentSearchQuery = injectionHelper.getString(bundle, "subscriptionsCurrentSearchQuery");
        t.subscriptionsListState = injectionHelper.getParcelable(bundle, "subscriptionsListState");
        t.subscriptionsShowOnlyUngrouped = injectionHelper.getBoolean(bundle, "subscriptionsShowOnlyUngrouped");
        t.wasSearchSubscriptionsVisible = injectionHelper.getBoolean(bundle, "wasSearchSubscriptionsVisible");
        t.wasSubscriptionSelectionChanged = injectionHelper.getBoolean(bundle, "wasSubscriptionSelectionChanged");
    }

    @Override // com.evernote.android.state.Injector.Object
    public void save(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putSerializable(bundle, "currentScreen", t.currentScreen);
        injectionHelper.putParcelable(bundle, "iconsListState", t.iconsListState);
        injectionHelper.putSerializable(bundle, "selectedIcon", t.selectedIcon);
        injectionHelper.putSerializable(bundle, "selectedSubscriptions", t.selectedSubscriptions);
        injectionHelper.putString(bundle, "subscriptionsCurrentSearchQuery", t.subscriptionsCurrentSearchQuery);
        injectionHelper.putParcelable(bundle, "subscriptionsListState", t.subscriptionsListState);
        injectionHelper.putBoolean(bundle, "subscriptionsShowOnlyUngrouped", t.subscriptionsShowOnlyUngrouped);
        injectionHelper.putBoolean(bundle, "wasSearchSubscriptionsVisible", t.wasSearchSubscriptionsVisible);
        injectionHelper.putBoolean(bundle, "wasSubscriptionSelectionChanged", t.wasSubscriptionSelectionChanged);
    }
}
