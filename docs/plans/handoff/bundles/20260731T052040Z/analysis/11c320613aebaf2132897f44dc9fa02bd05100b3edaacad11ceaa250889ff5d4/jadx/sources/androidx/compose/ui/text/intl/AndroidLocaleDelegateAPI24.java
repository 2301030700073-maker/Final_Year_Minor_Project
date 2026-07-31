package androidx.compose.ui.text.intl;

import androidx.compose.ui.text.intl.AndroidLocaleDelegateAPI24;
import androidx.transition.Transition;
import j$.util.Collection;
import j$.util.DesugarArrays;
import j$.util.function.IntPredicate$CC;
import java.util.ArrayList;
import java.util.function.IntPredicate;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.extractor.NewPipe$$ExternalSyntheticLambda2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidLocaleDelegateAPI24 implements PlatformLocaleDelegate {
    public Object lastLocaleList;
    public Object lastPlatformLocaleList;
    public final Object lock;

    public AndroidLocaleDelegateAPI24() {
        this.lock = new Transition.AnonymousClass1(7);
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    public LocaleList getCurrent() {
        android.os.LocaleList localeList = android.os.LocaleList.getDefault();
        synchronized (((Transition.AnonymousClass1) this.lock)) {
            try {
                LocaleList localeList2 = (LocaleList) this.lastLocaleList;
                if (localeList2 != null && localeList == ((android.os.LocaleList) this.lastPlatformLocaleList)) {
                    return localeList2;
                }
                int size = localeList.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    arrayList.add(new Locale(localeList.get(i)));
                }
                LocaleList localeList3 = new LocaleList(arrayList);
                this.lastPlatformLocaleList = localeList;
                this.lastLocaleList = localeList3;
                return localeList3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean isAvailableAndSelected(int i) {
        String string = ((RouterActivity) this.lock).getString(i);
        if (((String) this.lastLocaleList).equals(string)) {
            return Collection.EL.stream((ArrayList) this.lastPlatformLocaleList).anyMatch(new NewPipe$$ExternalSyntheticLambda2(string, 1));
        }
        return false;
    }

    public AndroidLocaleDelegateAPI24(RouterActivity routerActivity, ArrayList arrayList, String str) {
        this.lock = routerActivity;
        this.lastPlatformLocaleList = arrayList;
        this.lastLocaleList = str;
    }

    public boolean isAvailableAndSelected(int... iArr) {
        return DesugarArrays.stream(iArr).anyMatch(new IntPredicate() { // from class: org.schabi.newpipe.RouterActivity$ChoiceAvailabilityChecker$$ExternalSyntheticLambda0
            public /* synthetic */ IntPredicate and(IntPredicate intPredicate) {
                return IntPredicate$CC.$default$and(this, intPredicate);
            }

            public /* synthetic */ IntPredicate negate() {
                return IntPredicate$CC.$default$negate(this);
            }

            public /* synthetic */ IntPredicate or(IntPredicate intPredicate) {
                return IntPredicate$CC.$default$or(this, intPredicate);
            }

            @Override // java.util.function.IntPredicate
            public final boolean test(int i) {
                return AndroidLocaleDelegateAPI24.this.isAvailableAndSelected(i);
            }
        });
    }
}
