package defpackage;

import android.os.LocaleList;
import java.util.Locale;

/* renamed from: Eq, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0197Eq implements InterfaceC0175Dq {

    /* renamed from: do, reason: not valid java name */
    public final LocaleList f914do;

    public C0197Eq(Object obj) {
        this.f914do = (LocaleList) obj;
    }

    @Override // defpackage.InterfaceC0175Dq
    /* renamed from: do */
    public final Object mo301do() {
        return this.f914do;
    }

    public final boolean equals(Object obj) {
        boolean equals;
        equals = this.f914do.equals(((InterfaceC0175Dq) obj).mo301do());
        return equals;
    }

    @Override // defpackage.InterfaceC0175Dq
    /* renamed from: for */
    public final String mo302for() {
        String languageTags;
        languageTags = this.f914do.toLanguageTags();
        return languageTags;
    }

    public final int hashCode() {
        int hashCode;
        hashCode = this.f914do.hashCode();
        return hashCode;
    }

    @Override // defpackage.InterfaceC0175Dq
    /* renamed from: if */
    public final Locale mo303if(int i) {
        Locale locale;
        locale = this.f914do.get(i);
        return locale;
    }

    @Override // defpackage.InterfaceC0175Dq
    public final boolean isEmpty() {
        boolean isEmpty;
        isEmpty = this.f914do.isEmpty();
        return isEmpty;
    }

    @Override // defpackage.InterfaceC0175Dq
    public final int size() {
        int size;
        size = this.f914do.size();
        return size;
    }

    public final String toString() {
        String localeList;
        localeList = this.f914do.toString();
        return localeList;
    }
}
