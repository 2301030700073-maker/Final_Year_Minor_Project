package org.wikipedia.feed;

import android.location.Location;
import androidx.collection.MutableLongIntMap;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.work.Operation$State;
import java.util.Comparator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.page.NearbyPage;
import org.wikipedia.places.PlacesFragmentViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeViewModel$getPlacesCards$$inlined$sortedBy$1 implements Comparator {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $savedLocation$inlined;

    public HomeViewModel$getPlacesCards$$inlined$sortedBy$1(Comparator comparator) {
        this.$r8$classId = 2;
        this.$savedLocation$inlined = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.$savedLocation$inlined;
        switch (i) {
            case 0:
                MwQueryPage mwQueryPage = (MwQueryPage) obj;
                Location location = (Location) obj3;
                Location location2 = new Location("");
                List list = mwQueryPage.coordinates;
                list.getClass();
                location2.setLatitude(((MwQueryPage.Coordinates) list.get(0)).lat);
                location2.setLongitude(((MwQueryPage.Coordinates) mwQueryPage.coordinates.get(0)).lon);
                Float valueOf = Float.valueOf(location.distanceTo(location2));
                MwQueryPage mwQueryPage2 = (MwQueryPage) obj2;
                Location location3 = new Location("");
                List list2 = mwQueryPage2.coordinates;
                list2.getClass();
                location3.setLatitude(((MwQueryPage.Coordinates) list2.get(0)).lat);
                location3.setLongitude(((MwQueryPage.Coordinates) mwQueryPage2.coordinates.get(0)).lon);
                return Operation$State.compareValues(valueOf, Float.valueOf(location.distanceTo(location3)));
            case 1:
                MutableLongIntMap mutableLongIntMap = (MutableLongIntMap) obj3;
                return Operation$State.compareValues(Integer.valueOf(mutableLongIntMap.get(((Number) obj).longValue())), Integer.valueOf(mutableLongIntMap.get(((Number) obj2).longValue())));
            case 2:
                int compare = ((Comparator) obj3).compare(obj, obj2);
                if (compare != 0) {
                    return compare;
                }
                return LayoutNode.ZComparator.compare(((SemanticsNode) obj).layoutNode, ((SemanticsNode) obj2).layoutNode);
            case 3:
                int compare2 = ((HomeViewModel$getPlacesCards$$inlined$sortedBy$1) obj3).compare(obj, obj2);
                return compare2 != 0 ? compare2 : Operation$State.compareValues(Integer.valueOf(((SemanticsNode) obj).id), Integer.valueOf(((SemanticsNode) obj2).id));
            case 4:
                KotlinType kotlinType = (KotlinType) obj;
                Function1 function1 = (Function1) obj3;
                kotlinType.getClass();
                String obj4 = function1.invoke(kotlinType).toString();
                KotlinType kotlinType2 = (KotlinType) obj2;
                kotlinType2.getClass();
                return Operation$State.compareValues(obj4, function1.invoke(kotlinType2).toString());
            default:
                NearbyPage nearbyPage = (NearbyPage) obj;
                PlacesFragmentViewModel placesFragmentViewModel = (PlacesFragmentViewModel) obj3;
                Location location4 = placesFragmentViewModel.lastKnownLocation;
                Float valueOf2 = location4 != null ? Float.valueOf(nearbyPage.getLocation().distanceTo(location4)) : null;
                NearbyPage nearbyPage2 = (NearbyPage) obj2;
                Location location5 = placesFragmentViewModel.lastKnownLocation;
                return Operation$State.compareValues(valueOf2, location5 != null ? Float.valueOf(nearbyPage2.getLocation().distanceTo(location5)) : null);
        }
    }

    public /* synthetic */ HomeViewModel$getPlacesCards$$inlined$sortedBy$1(int i, Object obj) {
        this.$r8$classId = i;
        this.$savedLocation$inlined = obj;
    }
}
