package net.thunderbird.feature.mail.message.list.domain.model;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SortCriteria {
    public static final Set DateSortTypeOnly;
    public static final LinkedHashSet SecondaryNotRequiredForSortTypes;
    public final boolean isSecondarySortRequired;
    public final SortType primary;
    public final SortType secondary;

    static {
        Set set = ArraysKt___ArraysKt.toSet(new SortType[]{SortType.DateAsc, SortType.DateDesc});
        DateSortTypeOnly = set;
        SecondaryNotRequiredForSortTypes = Validate.plus(set, (Iterable) ArraysKt___ArraysKt.toSet(new SortType[]{SortType.ArrivalAsc, SortType.ArrivalDesc}));
    }

    public SortCriteria(SortType sortType, SortType sortType2) {
        sortType.getClass();
        this.primary = sortType;
        this.secondary = sortType2;
        LinkedHashSet linkedHashSet = SecondaryNotRequiredForSortTypes;
        if (linkedHashSet.contains(sortType) && sortType2 != null) {
            Regex$$ExternalSyntheticBUOutline0.m$2(sortType, "Secondary sorting criterion must be null for ");
            throw null;
        }
        if (!linkedHashSet.contains(sortType) && sortType2 == null) {
            Regex$$ExternalSyntheticBUOutline0.m$2(sortType, "Secondary sorting criterion is missing for ");
            throw null;
        }
        if (linkedHashSet.contains(sortType) || sortType2 == null || DateSortTypeOnly.contains(sortType2)) {
            this.isSecondarySortRequired = !linkedHashSet.contains(sortType);
        } else {
            Regex$$ExternalSyntheticBUOutline0.m$1("Secondary sorting criterion ", sortType2, " is not supported for ", sortType);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SortCriteria)) {
            return false;
        }
        SortCriteria sortCriteria = (SortCriteria) obj;
        return this.primary == sortCriteria.primary && this.secondary == sortCriteria.secondary;
    }

    public final int hashCode() {
        int hashCode = this.primary.hashCode() * 31;
        SortType sortType = this.secondary;
        return hashCode + (sortType == null ? 0 : sortType.hashCode());
    }

    public final String toString() {
        return "SortCriteria(primary=" + this.primary + ", secondary=" + this.secondary + ")";
    }
}
