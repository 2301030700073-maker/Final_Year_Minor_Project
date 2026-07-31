package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.IntentFilter;
import android.view.MenuItem;
import androidx.activity.BackEventCompat;
import androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.fragment.app.FragmentManager$1;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.progressindicator.DrawingDelegate;
import java.util.ArrayList;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import org.wikipedia.gallery.MediaDownloadReceiver;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BaseMenuWrapper {
    public Object mContext;
    public Object mMenuItems;

    public BaseMenuWrapper(int i) {
        this.mMenuItems = new ArrayList();
        for (int i2 = 0; i2 < i; i2++) {
            ((ArrayList) this.mMenuItems).add(new DrawingDelegate.ActiveIndicator());
        }
    }

    public abstract void cancelAnimatorImmediately();

    public void cleanup() {
        MediaDownloadReceiver mediaDownloadReceiver = (MediaDownloadReceiver) this.mContext;
        if (mediaDownloadReceiver != null) {
            try {
                ((AppCompatDelegateImpl) this.mMenuItems).mContext.unregisterReceiver(mediaDownloadReceiver);
            } catch (IllegalArgumentException unused) {
            }
            this.mContext = null;
        }
    }

    public abstract IntentFilter createIntentFilterForBroadcastReceiver();

    public abstract int[] following(int i);

    public abstract int getApplyableNightMode();

    public MenuItem getMenuItemWrapper(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.mMenuItems;
        if (simpleArrayMap == null) {
            simpleArrayMap = new SimpleArrayMap(0);
            this.mMenuItems = simpleArrayMap;
        }
        MenuItem menuItem2 = (MenuItem) simpleArrayMap.get(supportMenuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS((Context) this.mContext, supportMenuItem);
        ((SimpleArrayMap) this.mMenuItems).put(supportMenuItem, menuItemWrapperICS);
        return menuItemWrapperICS;
    }

    public int[] getRange(int i, int i2) {
        if (i < 0 || i2 < 0 || i == i2) {
            return null;
        }
        int[] iArr = (int[]) this.mMenuItems;
        iArr[0] = i;
        iArr[1] = i2;
        return iArr;
    }

    public String getText() {
        String str = (String) this.mContext;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("text");
        throw null;
    }

    public abstract void invalidateSpecValues();

    public boolean isBackEnabled() {
        return ((FragmentManager$1) this.mContext).isEnabled && ((BackHandlerCompat$navigationEventHandler$1) this.mMenuItems).isBackEnabled;
    }

    public abstract void onBackCompleted();

    public abstract void onChange();

    public abstract int[] preceding(int i);

    public abstract void registerAnimatorsCompleteCallback(MaterialCheckBox.AnonymousClass1 anonymousClass1);

    public abstract void requestCancelAnimatorAfterCurrentCycle();

    public void setup() {
        cleanup();
        IntentFilter createIntentFilterForBroadcastReceiver = createIntentFilterForBroadcastReceiver();
        if (createIntentFilterForBroadcastReceiver.countActions() == 0) {
            return;
        }
        MediaDownloadReceiver mediaDownloadReceiver = (MediaDownloadReceiver) this.mContext;
        if (mediaDownloadReceiver == null) {
            mediaDownloadReceiver = new MediaDownloadReceiver(1, this);
            this.mContext = mediaDownloadReceiver;
        }
        ((AppCompatDelegateImpl) this.mMenuItems).mContext.registerReceiver(mediaDownloadReceiver, createIntentFilterForBroadcastReceiver);
    }

    public abstract void startAnimator();

    public abstract void unregisterAnimatorsCompleteCallback();

    public void onBackCancelled() {
    }

    public void onBackStarted() {
    }

    public void onBackProgressed(BackEventCompat backEventCompat) {
    }

    public BaseMenuWrapper(Context context) {
        this.mContext = context;
    }

    public BaseMenuWrapper(final TuplesKt tuplesKt) {
        this.mContext = new FragmentManager$1(this, false, 2);
        this.mMenuItems = new NavigationEventHandler(tuplesKt) { // from class: androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1
            {
                this.currentInfo = tuplesKt;
                this.isBackEnabled = false;
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void onBackCancelled() {
                BaseMenuWrapper.this.onBackCancelled();
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void onBackCompleted() {
                BaseMenuWrapper.this.onBackCompleted();
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void onBackProgressed(NavigationEvent navigationEvent) {
                BaseMenuWrapper.this.onBackProgressed(new BackEventCompat(navigationEvent));
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void onBackStarted(NavigationEvent navigationEvent) {
                navigationEvent.getClass();
                BaseMenuWrapper.this.onBackStarted();
            }
        };
    }

    public BaseMenuWrapper() {
        this.mMenuItems = new int[2];
    }

    public BaseMenuWrapper(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.mMenuItems = appCompatDelegateImpl;
    }
}
