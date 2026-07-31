package net.openid.appauth;

import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.view.MenuItem;
import androidx.activity.BackEventCompat;
import androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.work.OperationKt;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.load.model.stream.QMediaStoreUriLoader;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.backends.AndroidAlarmManager;
import java.io.File;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CompletableDeferredImpl;
import net.openid.appauth.JsonUtil$Field;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class JsonUtil$Field implements ModelLoaderFactory {
    public Object defaultValue;
    public Object key;

    public JsonUtil$Field(int i) {
        switch (i) {
            case 5:
                this.defaultValue = new int[2];
                break;
            default:
                this.key = AtomicFU.atomic(1);
                this.defaultValue = new CompletableDeferredImpl();
                break;
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoaderFactory
    public ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
        Context context = (Context) this.key;
        Class cls = (Class) this.defaultValue;
        return new QMediaStoreUriLoader(context, multiModelLoaderFactory.build(File.class, cls), multiModelLoaderFactory.build(Uri.class, cls), cls);
    }

    public void cleanup() {
        AndroidAlarmManager.AnonymousClass1 anonymousClass1 = (AndroidAlarmManager.AnonymousClass1) this.key;
        if (anonymousClass1 != null) {
            try {
                ((AppCompatDelegateImpl) this.defaultValue).mContext.unregisterReceiver(anonymousClass1);
            } catch (IllegalArgumentException unused) {
            }
            this.key = null;
        }
    }

    public abstract Object convert(String str);

    public abstract IntentFilter createIntentFilterForBroadcastReceiver();

    public abstract int[] following(int i);

    public abstract int getApplyableNightMode();

    public MenuItem getMenuItemWrapper(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (((SimpleArrayMap) this.defaultValue) == null) {
            this.defaultValue = new SimpleArrayMap(0);
        }
        MenuItem menuItem2 = (MenuItem) ((SimpleArrayMap) this.defaultValue).get(supportMenuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS((Context) this.key, supportMenuItem);
        ((SimpleArrayMap) this.defaultValue).put(supportMenuItem, menuItemWrapperICS);
        return menuItemWrapperICS;
    }

    public int[] getRange(int i, int i2) {
        if (i < 0 || i2 < 0 || i == i2) {
            return null;
        }
        int[] iArr = (int[]) this.defaultValue;
        iArr[0] = i;
        iArr[1] = i2;
        return iArr;
    }

    public String getText() {
        String str = (String) this.key;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("text");
        throw null;
    }

    public boolean isBackEnabled() {
        return ((MessageCompose.AnonymousClass3) this.key).isEnabled && ((BackHandlerCompat$navigationEventHandler$1) this.defaultValue).isBackEnabled;
    }

    public abstract void onBackCompleted();

    public abstract void onChange();

    public abstract int[] preceding(int i);

    public void setup() {
        cleanup();
        IntentFilter createIntentFilterForBroadcastReceiver = createIntentFilterForBroadcastReceiver();
        if (createIntentFilterForBroadcastReceiver.countActions() == 0) {
            return;
        }
        if (((AndroidAlarmManager.AnonymousClass1) this.key) == null) {
            this.key = new AndroidAlarmManager.AnonymousClass1(1, this);
        }
        ((AppCompatDelegateImpl) this.defaultValue).mContext.registerReceiver((AndroidAlarmManager.AnonymousClass1) this.key, createIntentFilterForBroadcastReceiver);
    }

    public void onBackCancelled() {
    }

    public void onBackStarted() {
    }

    public void onBackProgressed(BackEventCompat backEventCompat) {
    }

    public JsonUtil$Field(Context context) {
        this.key = context;
    }

    public JsonUtil$Field(final OperationKt operationKt) {
        this.key = new MessageCompose.AnonymousClass3(2, this, false);
        this.defaultValue = new NavigationEventHandler(operationKt) { // from class: androidx.activity.compose.internal.BackHandlerCompat$navigationEventHandler$1
            {
                this.currentInfo = operationKt;
                this.isBackEnabled = false;
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void onBackCancelled() {
                JsonUtil$Field.this.onBackCancelled();
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void onBackCompleted() {
                JsonUtil$Field.this.onBackCompleted();
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void onBackProgressed(NavigationEvent navigationEvent) {
                JsonUtil$Field.this.onBackProgressed(new BackEventCompat(navigationEvent));
            }

            @Override // androidx.navigationevent.NavigationEventHandler
            public final void onBackStarted(NavigationEvent navigationEvent) {
                navigationEvent.getClass();
                JsonUtil$Field.this.onBackStarted();
            }
        };
    }

    public /* synthetic */ JsonUtil$Field(Object obj, Serializable serializable) {
        this.key = obj;
        this.defaultValue = serializable;
    }

    public JsonUtil$Field(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.defaultValue = appCompatDelegateImpl;
    }
}
