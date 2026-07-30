package c.b.a.b.b.j;

import android.content.Context;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.systemui.plugins.Plugin;
import com.android.systemui.plugins.PluginListener;
import com.android.systemui.plugins.UserEventPlugin;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class g implements PluginListener {

    /* renamed from: b, reason: collision with root package name */
    public static final MainThreadInitializedObject f2593b = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.b.a.b.b.j.a
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new g(context);
        }
    });

    /* renamed from: a, reason: collision with root package name */
    public final List f2594a = new ArrayList();

    public g(Context context) {
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.b(context)).mPluginManager.addPluginListener((PluginListener) this, UserEventPlugin.class, true);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginConnected(Plugin plugin, Context context) {
        this.f2594a.add((UserEventPlugin) plugin);
    }

    @Override // com.android.systemui.plugins.PluginListener
    public void onPluginDisconnected(Plugin plugin) {
        this.f2594a.remove((UserEventPlugin) plugin);
    }
}
