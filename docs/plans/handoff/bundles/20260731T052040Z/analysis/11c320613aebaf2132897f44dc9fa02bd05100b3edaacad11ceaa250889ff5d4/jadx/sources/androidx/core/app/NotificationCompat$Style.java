package androidx.core.app;

import android.content.Context;
import android.content.IntentFilter;
import android.util.SparseIntArray;
import android.view.MenuItem;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.compose.ui.Modifier;
import androidx.core.internal.view.SupportMenuItem;
import j$.util.DesugarCollections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.schabi.newpipe.MainActivity;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.streams.DataReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class NotificationCompat$Style {
    public Object mBigContentTitle;
    public Object mBuilder;

    public NotificationCompat$Style(int i) {
        switch (i) {
            case 4:
                this.mBuilder = new SparseIntArray();
                this.mBigContentTitle = new SparseIntArray();
                break;
            default:
                this.mBigContentTitle = new int[2];
                break;
        }
    }

    public abstract void apply(NotificationCompatBuilder notificationCompatBuilder);

    public void cleanup() {
        MainActivity.AnonymousClass3 anonymousClass3 = (MainActivity.AnonymousClass3) this.mBuilder;
        if (anonymousClass3 != null) {
            try {
                ((AppCompatDelegateImpl) this.mBigContentTitle).mContext.unregisterReceiver(anonymousClass3);
            } catch (IllegalArgumentException unused) {
            }
            this.mBuilder = null;
        }
    }

    public abstract IntentFilter createIntentFilterForBroadcastReceiver();

    public abstract int[] following(int i);

    public List fromChannelUrl(String str) {
        throw new UnsupportedOperationException(Modifier.CC.m("Service ", ((StreamingService) this.mBigContentTitle).serviceInfo.name, " doesn't support extracting from a channel url"));
    }

    public List fromInputStream(DataReader.AnonymousClass1 anonymousClass1, String str) {
        throw new UnsupportedOperationException(Modifier.CC.m("Service ", ((StreamingService) this.mBigContentTitle).serviceInfo.name, " doesn't support extracting from an InputStream"));
    }

    public abstract int getApplyableNightMode();

    public String getClassName() {
        return null;
    }

    public MenuItem getMenuItemWrapper(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (((SimpleArrayMap) this.mBigContentTitle) == null) {
            this.mBigContentTitle = new SimpleArrayMap(0);
        }
        MenuItem menuItem2 = (MenuItem) ((SimpleArrayMap) this.mBigContentTitle).get(supportMenuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS((Context) this.mBuilder, supportMenuItem);
        ((SimpleArrayMap) this.mBigContentTitle).put(supportMenuItem, menuItemWrapperICS);
        return menuItemWrapperICS;
    }

    public int[] getRange(int i, int i2) {
        if (i < 0 || i2 < 0 || i == i2) {
            return null;
        }
        int[] iArr = (int[]) this.mBigContentTitle;
        iArr[0] = i;
        iArr[1] = i2;
        return iArr;
    }

    public abstract String getRelatedUrl();

    public int getSpanGroupIndex(int i, int i2) {
        int spanSize = getSpanSize(i);
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            int spanSize2 = getSpanSize(i5);
            i3 += spanSize2;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = spanSize2;
            }
        }
        return i3 + spanSize > i2 ? i4 + 1 : i4;
    }

    public int getSpanIndex(int i, int i2) {
        int spanSize = getSpanSize(i);
        if (spanSize == i2) {
            return 0;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int spanSize2 = getSpanSize(i4);
            i3 += spanSize2;
            if (i3 == i2) {
                i3 = 0;
            } else if (i3 > i2) {
                i3 = spanSize2;
            }
        }
        if (spanSize + i3 <= i2) {
            return i3;
        }
        return 0;
    }

    public abstract int getSpanSize(int i);

    public String getText() {
        String str = (String) this.mBuilder;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("text");
        throw null;
    }

    public void invalidateSpanIndexCache() {
        ((SparseIntArray) this.mBuilder).clear();
    }

    public abstract void onChange();

    public abstract int[] preceding(int i);

    public void setup() {
        cleanup();
        IntentFilter createIntentFilterForBroadcastReceiver = createIntentFilterForBroadcastReceiver();
        if (createIntentFilterForBroadcastReceiver.countActions() == 0) {
            return;
        }
        if (((MainActivity.AnonymousClass3) this.mBuilder) == null) {
            this.mBuilder = new MainActivity.AnonymousClass3(this, 1);
        }
        ((AppCompatDelegateImpl) this.mBigContentTitle).mContext.registerReceiver((MainActivity.AnonymousClass3) this.mBuilder, createIntentFilterForBroadcastReceiver);
    }

    public NotificationCompat$Style(Context context) {
        this.mBuilder = context;
    }

    public NotificationCompat$Style(StreamingService streamingService, List list) {
        this.mBigContentTitle = streamingService;
        this.mBuilder = DesugarCollections.unmodifiableList(list);
    }

    public NotificationCompat$Style(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.mBigContentTitle = appCompatDelegateImpl;
    }
}
