package app.k9mail.legacy.ui.folder;

import android.graphics.RectF;
import android.util.Rational;
import com.bytehamster.lib.preferencesearch.PreferenceParser;
import java.text.Collator;
import java.util.Comparator;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultDisplayFolderRepository$special$$inlined$thenBy$1 implements Comparator {
    public final Object $comparator;
    public final /* synthetic */ int $r8$classId = 1;
    public final Object $this_thenBy;

    public DefaultDisplayFolderRepository$special$$inlined$thenBy$1(Rational rational, Rational rational2) {
        this.$comparator = rational2 == null ? new Rational(4, 3) : rational2;
        this.$this_thenBy = getTransformedMappingArea(rational);
    }

    public static float getOverlappingAreaSize(RectF rectF, RectF rectF2) {
        return (rectF.width() < rectF2.width() ? rectF.width() : rectF2.width()) * (rectF.height() < rectF2.height() ? rectF.height() : rectF2.height());
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.$this_thenBy;
        switch (i) {
            case 0:
                int compare = ((PreferenceParser.AnonymousClass1) obj3).compare(obj, obj2);
                return compare != 0 ? compare : ((Collator) this.$comparator).compare(((DisplayFolder) obj).folder.name, ((DisplayFolder) obj2).folder.name);
            default:
                Rational rational = (Rational) obj;
                Rational rational2 = (Rational) obj2;
                RectF rectF = (RectF) obj3;
                boolean z = false;
                if (rational.equals(rational2)) {
                    return 0;
                }
                RectF transformedMappingArea = getTransformedMappingArea(rational);
                RectF transformedMappingArea2 = getTransformedMappingArea(rational2);
                boolean z2 = transformedMappingArea.width() >= rectF.width() && transformedMappingArea.height() >= rectF.height();
                if (transformedMappingArea2.width() >= rectF.width() && transformedMappingArea2.height() >= rectF.height()) {
                    z = true;
                }
                if (z2 && z) {
                    return (int) Math.signum((transformedMappingArea.height() * transformedMappingArea.width()) - (transformedMappingArea2.height() * transformedMappingArea2.width()));
                }
                if (z2) {
                    return -1;
                }
                if (z) {
                    return 1;
                }
                return -((int) Math.signum(getOverlappingAreaSize(transformedMappingArea, rectF) - getOverlappingAreaSize(transformedMappingArea2, rectF)));
        }
    }

    public RectF getTransformedMappingArea(Rational rational) {
        float floatValue = rational.floatValue();
        Rational rational2 = (Rational) this.$comparator;
        return floatValue == rational2.floatValue() ? new RectF(0.0f, 0.0f, rational2.getNumerator(), rational2.getDenominator()) : rational.floatValue() > rational2.floatValue() ? new RectF(0.0f, 0.0f, rational2.getNumerator(), (rational.getDenominator() * rational2.getNumerator()) / rational.getNumerator()) : new RectF(0.0f, 0.0f, (rational.getNumerator() * rational2.getDenominator()) / rational.getDenominator(), rational2.getDenominator());
    }

    public DefaultDisplayFolderRepository$special$$inlined$thenBy$1(PreferenceParser.AnonymousClass1 anonymousClass1, Collator collator) {
        this.$this_thenBy = anonymousClass1;
        this.$comparator = collator;
    }
}
