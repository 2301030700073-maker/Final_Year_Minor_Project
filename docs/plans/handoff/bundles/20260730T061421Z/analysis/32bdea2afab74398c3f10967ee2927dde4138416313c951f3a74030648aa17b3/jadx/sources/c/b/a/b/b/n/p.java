package c.b.a.b.b.n;

import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import com.android.launcher3.appprediction.InstantAppItemInfo;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.quickstep.InstantAppResolverImpl;

/* loaded from: classes.dex */
public class p extends AppInfo {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f2776a;

    public p(ComponentKey componentKey, boolean z, o oVar) {
        this.intent = AppInfo.makeLaunchIntent(componentKey.componentName);
        this.user = componentKey.user;
        this.itemType = 0;
        this.f2776a = z;
    }

    public static AppInfo g(ComponentKey componentKey, Uri uri) {
        if (InstantAppResolverImpl.COMPONENT_CLASS_MARKER.equals(componentKey.componentName.getClassName())) {
            try {
                return new InstantAppItemInfo(Intent.parseUri(uri.getQueryParameter("instant-intent"), 0), componentKey.componentName.getPackageName());
            } catch (Exception e) {
                Log.e("SimpleItemInfo", "instant app info does not have valid intent", e);
            }
        }
        return new o(componentKey, "true".equals(uri.getQueryParameter("isDisabled")), uri);
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon, com.android.launcher3.model.data.ItemInfo
    public boolean isDisabled() {
        return this.f2776a;
    }
}
