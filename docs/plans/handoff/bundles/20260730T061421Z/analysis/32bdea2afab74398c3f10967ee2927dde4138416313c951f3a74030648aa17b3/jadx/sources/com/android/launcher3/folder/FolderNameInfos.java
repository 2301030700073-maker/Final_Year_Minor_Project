package com.android.launcher3.folder;

import android.text.TextUtils;
import c.a.a.I0.A;
import java.util.Arrays;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class FolderNameInfos {
    public int mStatus = 0;
    public final CharSequence[] mLabels = new CharSequence[4];
    public final Float[] mScores = new Float[4];

    public boolean contains(final CharSequence charSequence) {
        return Arrays.stream(this.mLabels).filter(A.f1348a).anyMatch(new Predicate() { // from class: c.a.a.I0.n
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((CharSequence) obj).toString().equalsIgnoreCase(charSequence.toString());
            }
        });
    }

    public boolean hasPrimary() {
        return (this.mStatus & 2) > 0 && this.mLabels[0] != null;
    }

    public boolean hasSuggestions() {
        for (CharSequence charSequence : this.mLabels) {
            if (charSequence != null && !TextUtils.isEmpty(charSequence)) {
                return true;
            }
        }
        return false;
    }

    public void setLabel(int i, CharSequence charSequence, Float f) {
        CharSequence[] charSequenceArr = this.mLabels;
        if (i < charSequenceArr.length) {
            charSequenceArr[i] = charSequence;
            this.mScores[i] = f;
        }
    }

    public void setStatus(int i) {
        this.mStatus = i | this.mStatus;
    }

    public String toString() {
        return String.format("status=%s, labels=%s", Integer.toBinaryString(this.mStatus), Arrays.toString(this.mLabels));
    }
}
