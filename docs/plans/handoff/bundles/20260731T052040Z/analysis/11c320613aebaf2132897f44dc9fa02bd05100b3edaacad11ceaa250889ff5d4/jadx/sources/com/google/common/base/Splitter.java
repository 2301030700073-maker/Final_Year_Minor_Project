package com.google.common.base;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.android.exoplayer2.util.Log;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.ConnectionPool;
import okio.Okio;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Splitter {
    public final int limit;
    public final ConnectionPool strategy;
    public final CharMatcher$FastMatcher trimmer;

    public Splitter(ConnectionPool connectionPool) {
        CharMatcher$Any charMatcher$Any = CharMatcher$Any.INSTANCE$1;
        this.strategy = connectionPool;
        this.trimmer = charMatcher$Any;
        this.limit = Log.LOG_LEVEL_OFF;
    }

    public final List splitToList(final CharSequence charSequence) {
        charSequence.getClass();
        final ConnectionPool connectionPool = this.strategy;
        connectionPool.getClass();
        Iterator it = new Iterator(this, charSequence) { // from class: com.google.common.base.Splitter$1$1
            public int limit;
            public String next;
            public final CharSequence toSplit;
            public final CharMatcher$FastMatcher trimmer;
            public int state = 2;
            public int offset = 0;

            {
                this.trimmer = this.trimmer;
                this.limit = this.limit;
                this.toSplit = charSequence;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                String str;
                CharMatcher$FastMatcher charMatcher$FastMatcher;
                int i = this.state;
                if (i == 4) {
                    Node$$ExternalSyntheticBUOutline0.m();
                    return false;
                }
                int ordinal = SolverVariable$Type$EnumUnboxingSharedUtility.ordinal(i);
                if (ordinal == 0) {
                    return true;
                }
                if (ordinal != 2) {
                    this.state = 4;
                    int i2 = this.offset;
                    while (true) {
                        int i3 = this.offset;
                        if (i3 == -1) {
                            this.state = 3;
                            str = null;
                            break;
                        }
                        CharMatcher$Is charMatcher$Is = (CharMatcher$Is) ConnectionPool.this.delegate;
                        CharSequence charSequence2 = this.toSplit;
                        int length = charSequence2.length();
                        Okio.checkPositionIndex(i3, length);
                        while (true) {
                            if (i3 >= length) {
                                i3 = -1;
                                break;
                            }
                            if (charMatcher$Is.matches(charSequence2.charAt(i3))) {
                                break;
                            }
                            i3++;
                        }
                        if (i3 == -1) {
                            i3 = charSequence2.length();
                            this.offset = -1;
                        } else {
                            this.offset = i3 + 1;
                        }
                        int i4 = this.offset;
                        if (i4 == i2) {
                            int i5 = i4 + 1;
                            this.offset = i5;
                            if (i5 > charSequence2.length()) {
                                this.offset = -1;
                            }
                        } else {
                            while (true) {
                                charMatcher$FastMatcher = this.trimmer;
                                if (i2 >= i3 || !charMatcher$FastMatcher.matches(charSequence2.charAt(i2))) {
                                    break;
                                }
                                i2++;
                            }
                            while (i3 > i2 && charMatcher$FastMatcher.matches(charSequence2.charAt(i3 - 1))) {
                                i3--;
                            }
                            int i6 = this.limit;
                            if (i6 == 1) {
                                i3 = charSequence2.length();
                                this.offset = -1;
                                while (i3 > i2 && charMatcher$FastMatcher.matches(charSequence2.charAt(i3 - 1))) {
                                    i3--;
                                }
                            } else {
                                this.limit = i6 - 1;
                            }
                            str = charSequence2.subSequence(i2, i3).toString();
                        }
                    }
                    this.next = str;
                    if (this.state != 3) {
                        this.state = 1;
                        return true;
                    }
                }
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                if (!hasNext()) {
                    CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
                    return null;
                }
                this.state = 2;
                String str = this.next;
                this.next = null;
                return str;
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        };
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return DesugarCollections.unmodifiableList(arrayList);
    }
}
