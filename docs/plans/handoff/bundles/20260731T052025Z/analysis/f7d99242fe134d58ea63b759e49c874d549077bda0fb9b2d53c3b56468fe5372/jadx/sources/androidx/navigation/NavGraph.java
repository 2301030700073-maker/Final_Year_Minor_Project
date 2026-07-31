package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDestination;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import com.fsck.k9.backend.imap.ImapSync;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.UIntArray;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.ConstrainedOnceSequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class NavGraph extends NavDestination implements Iterable, KMappedMarker {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final RawField impl;

    public NavGraph(NavGraphNavigator navGraphNavigator) {
        super(navGraphNavigator);
        this.impl = new RawField(this);
    }

    @Override // androidx.navigation.NavDestination
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || !(obj instanceof NavGraph) || !super.equals(obj)) {
                return false;
            }
            RawField rawField = this.impl;
            int size = ((SparseArrayCompat) rawField.nameLowerCase).size();
            RawField rawField2 = ((NavGraph) obj).impl;
            if (size != ((SparseArrayCompat) rawField2.nameLowerCase).size() || rawField.delimiterIdx != rawField2.delimiterIdx) {
                return false;
            }
            SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) rawField.nameLowerCase;
            sparseArrayCompat.getClass();
            Iterator it = ((ConstrainedOnceSequence) SequencesKt.asSequence(new UIntArray.Iterator(1, sparseArrayCompat))).iterator();
            while (it.hasNext()) {
                NavDestination navDestination = (NavDestination) it.next();
                if (!navDestination.equals(((SparseArrayCompat) rawField2.nameLowerCase).get(navDestination.impl.id))) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // androidx.navigation.NavDestination
    public final int hashCode() {
        RawField rawField = this.impl;
        int i = rawField.delimiterIdx;
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) rawField.nameLowerCase;
        int size = sparseArrayCompat.size();
        for (int i2 = 0; i2 < size; i2++) {
            i = (((i * 31) + sparseArrayCompat.keyAt(i2)) * 31) + ((NavDestination) sparseArrayCompat.valueAt(i2)).hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        RawField rawField = this.impl;
        rawField.getClass();
        return new NavGraphImpl$iterator$1(rawField);
    }

    @Override // androidx.navigation.NavDestination
    public final NavDestination.DeepLinkMatch matchDeepLink(ImapSync imapSync) {
        NavDestination.DeepLinkMatch matchDeepLink = super.matchDeepLink(imapSync);
        RawField rawField = this.impl;
        rawField.getClass();
        return rawField.matchDeepLinkComprehensive$navigation_common_release(matchDeepLink, imapSync, false, (NavGraph) rawField.raw);
    }

    public final NavDestination.DeepLinkMatch matchDeepLinkComprehensive(ImapSync imapSync, NavDestination navDestination) {
        return this.impl.matchDeepLinkComprehensive$navigation_common_release(super.matchDeepLink(imapSync), imapSync, true, navDestination);
    }

    public final NavDestination.DeepLinkMatch matchRouteComprehensive(String str, boolean z, NavDestination navDestination) {
        NavDestination.DeepLinkMatch deepLinkMatch;
        RawField rawField = this.impl;
        rawField.getClass();
        NavGraph navGraph = (NavGraph) rawField.raw;
        NavDestination.DeepLinkMatch matchRoute$navigation_common_release = ((NavDestination) navGraph).impl.matchRoute$navigation_common_release(str);
        ArrayList arrayList = new ArrayList();
        Iterator it = navGraph.iterator();
        while (true) {
            NavGraphImpl$iterator$1 navGraphImpl$iterator$1 = (NavGraphImpl$iterator$1) it;
            deepLinkMatch = null;
            if (!navGraphImpl$iterator$1.hasNext()) {
                break;
            }
            NavDestination navDestination2 = (NavDestination) navGraphImpl$iterator$1.next();
            if (!Intrinsics.areEqual(navDestination2, navDestination)) {
                if (navDestination2 instanceof NavGraph) {
                    deepLinkMatch = ((NavGraph) navDestination2).matchRouteComprehensive(str, false, navGraph);
                } else {
                    navDestination2.getClass();
                    deepLinkMatch = navDestination2.impl.matchRoute$navigation_common_release(str);
                }
            }
            if (deepLinkMatch != null) {
                arrayList.add(deepLinkMatch);
            }
        }
        NavDestination.DeepLinkMatch deepLinkMatch2 = (NavDestination.DeepLinkMatch) CollectionsKt.maxOrNull(arrayList);
        NavGraph navGraph2 = navGraph.parent;
        if (navGraph2 != null && z && !navGraph2.equals(navDestination)) {
            deepLinkMatch = navGraph2.matchRouteComprehensive(str, true, navGraph);
        }
        return (NavDestination.DeepLinkMatch) CollectionsKt.maxOrNull(ArraysKt___ArraysKt.filterNotNull(new NavDestination.DeepLinkMatch[]{matchRoute$navigation_common_release, deepLinkMatch2, deepLinkMatch}));
    }

    @Override // androidx.navigation.NavDestination
    public final void onInflate(Context context, AttributeSet attributeSet) {
        String valueOf;
        context.getClass();
        super.onInflate(context, attributeSet);
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.NavGraphNavigator);
        obtainAttributes.getClass();
        int resourceId = obtainAttributes.getResourceId(0, 0);
        RawField rawField = this.impl;
        rawField.setStartDestinationId$navigation_common_release(resourceId);
        int i = rawField.delimiterIdx;
        if (i <= 16777215) {
            valueOf = String.valueOf(i);
        } else {
            try {
                valueOf = context.getResources().getResourceName(i);
                valueOf.getClass();
            } catch (Resources.NotFoundException unused) {
                valueOf = String.valueOf(i);
            }
        }
        rawField.name = valueOf;
        obtainAttributes.recycle();
    }

    @Override // androidx.navigation.NavDestination
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        RawField rawField = this.impl;
        String str = (String) rawField.body;
        rawField.getClass();
        NavDestination findNode$navigation_common_release = (str == null || StringsKt.isBlank(str)) ? null : rawField.findNode$navigation_common_release(str, true);
        if (findNode$navigation_common_release == null) {
            findNode$navigation_common_release = rawField.findNode$navigation_common_release(rawField.delimiterIdx);
        }
        sb.append(" startDestination=");
        if (findNode$navigation_common_release == null) {
            String str2 = (String) rawField.body;
            if (str2 != null) {
                sb.append(str2);
            } else {
                String str3 = (String) rawField.name;
                if (str3 != null) {
                    sb.append(str3);
                } else {
                    sb.append("0x" + Integer.toHexString(rawField.delimiterIdx));
                }
            }
        } else {
            sb.append("{");
            sb.append(findNode$navigation_common_release.toString());
            sb.append("}");
        }
        return sb.toString();
    }
}
