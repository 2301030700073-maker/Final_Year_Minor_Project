package c.a.a;

import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.HashSet;
import java.util.function.Predicate;

/* renamed from: c.a.a.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0233c implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HashSet f1834a;

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        return this.f1834a.contains((WorkspaceItemInfo) obj);
    }
}
