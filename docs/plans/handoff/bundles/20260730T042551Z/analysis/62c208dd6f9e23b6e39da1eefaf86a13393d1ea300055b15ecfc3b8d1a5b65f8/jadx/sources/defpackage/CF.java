package defpackage;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes3.dex */
public final class CF extends AbstractC0459Qp implements InterfaceC3641rk<CharSequence, Integer, C3653rw<? extends Integer, ? extends Integer>> {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ List<String> f345do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final /* synthetic */ boolean f346do;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CF(List<String> list, boolean z) {
        super(2);
        this.f345do = list;
        this.f346do = z;
    }

    @Override // defpackage.InterfaceC3641rk
    public final C3653rw<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
        Object obj;
        C3653rw c3653rw;
        Object obj2;
        Object obj3;
        CharSequence charSequence2 = charSequence;
        int intValue = num.intValue();
        C0173Do.m401try(charSequence2, "$this$$receiver");
        List<String> list = this.f345do;
        boolean z = this.f346do;
        if (z || list.size() != 1) {
            if (intValue < 0) {
                intValue = 0;
            }
            C3881vo c3881vo = new C3881vo(intValue, charSequence2.length());
            boolean z2 = charSequence2 instanceof String;
            int i = c3881vo.f15770try;
            int i2 = c3881vo.f15769new;
            if (z2) {
                if ((i > 0 && intValue <= i2) || (i < 0 && i2 <= intValue)) {
                    while (true) {
                        Iterator<T> it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                obj2 = null;
                                break;
                            }
                            obj2 = it.next();
                            String str = (String) obj2;
                            if (BF.g(0, intValue, str.length(), str, (String) charSequence2, z)) {
                                break;
                            }
                        }
                        String str2 = (String) obj2;
                        if (str2 == null) {
                            if (intValue == i2) {
                                break;
                            }
                            intValue += i;
                        } else {
                            c3653rw = new C3653rw(Integer.valueOf(intValue), str2);
                            break;
                        }
                    }
                }
                c3653rw = null;
            } else {
                if ((i > 0 && intValue <= i2) || (i < 0 && i2 <= intValue)) {
                    while (true) {
                        Iterator<T> it2 = list.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                obj = null;
                                break;
                            }
                            obj = it2.next();
                            String str3 = (String) obj;
                            if (EF.r(str3, charSequence2, intValue, str3.length(), z)) {
                                break;
                            }
                        }
                        String str4 = (String) obj;
                        if (str4 == null) {
                            if (intValue == i2) {
                                break;
                            }
                            intValue += i;
                        } else {
                            c3653rw = new C3653rw(Integer.valueOf(intValue), str4);
                            break;
                        }
                    }
                }
                c3653rw = null;
            }
        } else {
            List<String> list2 = list;
            if (list2 instanceof List) {
                List<String> list3 = list2;
                int size = list3.size();
                if (size == 0) {
                    throw new NoSuchElementException("List is empty.");
                }
                if (size != 1) {
                    throw new IllegalArgumentException("List has more than one element.");
                }
                obj3 = list3.get(0);
            } else {
                Iterator<T> it3 = list2.iterator();
                if (!it3.hasNext()) {
                    throw new NoSuchElementException("Collection is empty.");
                }
                Object next = it3.next();
                if (it3.hasNext()) {
                    throw new IllegalArgumentException("Collection has more than one element.");
                }
                obj3 = next;
            }
            String str5 = (String) obj3;
            int o = EF.o(charSequence2, str5, intValue, false, 4);
            if (o >= 0) {
                c3653rw = new C3653rw(Integer.valueOf(o), str5);
            }
            c3653rw = null;
        }
        if (c3653rw == null) {
            return null;
        }
        return new C3653rw<>(c3653rw.f15340do, Integer.valueOf(((String) c3653rw.f15341if).length()));
    }
}
