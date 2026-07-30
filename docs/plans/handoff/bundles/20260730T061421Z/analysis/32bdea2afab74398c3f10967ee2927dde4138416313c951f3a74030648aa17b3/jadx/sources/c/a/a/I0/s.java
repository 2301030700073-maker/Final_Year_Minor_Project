package c.a.a.I0;

import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.folder.FolderPagedView;
import java.util.function.ToIntFunction;

/* loaded from: classes.dex */
public final /* synthetic */ class s implements ToIntFunction {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ s f1376a = new s();

    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return FolderPagedView.c((ShortcutAndWidgetContainer) obj);
    }
}
