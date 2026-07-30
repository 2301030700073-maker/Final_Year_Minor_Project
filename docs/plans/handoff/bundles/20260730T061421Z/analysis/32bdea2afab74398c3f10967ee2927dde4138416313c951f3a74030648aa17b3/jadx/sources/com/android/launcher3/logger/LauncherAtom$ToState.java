package com.android.launcher3.logger;

import c.b.b.M;
import c.b.b.N;

/* loaded from: classes.dex */
public enum LauncherAtom$ToState implements M {
    TO_STATE_UNSPECIFIED(0),
    UNCHANGED(1),
    TO_SUGGESTION0(2),
    TO_SUGGESTION1_WITH_VALID_PRIMARY(3),
    TO_SUGGESTION1_WITH_EMPTY_PRIMARY(4),
    TO_SUGGESTION2_WITH_VALID_PRIMARY(5),
    TO_SUGGESTION2_WITH_EMPTY_PRIMARY(6),
    TO_SUGGESTION3_WITH_VALID_PRIMARY(7),
    TO_SUGGESTION3_WITH_EMPTY_PRIMARY(8),
    TO_EMPTY_WITH_VALID_PRIMARY(9),
    TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY(10),
    TO_EMPTY_WITH_EMPTY_SUGGESTIONS(11),
    TO_EMPTY_WITH_SUGGESTIONS_DISABLED(12),
    TO_CUSTOM_WITH_VALID_PRIMARY(13),
    TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY(14),
    TO_CUSTOM_WITH_EMPTY_SUGGESTIONS(15),
    TO_CUSTOM_WITH_SUGGESTIONS_DISABLED(16);

    public final int value;

    public final class ToStateVerifier implements N {
        public static final N INSTANCE = new ToStateVerifier();

        @Override // c.b.b.N
        public boolean isInRange(int i) {
            return LauncherAtom$ToState.forNumber(i) != null;
        }
    }

    LauncherAtom$ToState(int i) {
        this.value = i;
    }

    public static LauncherAtom$ToState forNumber(int i) {
        switch (i) {
            case 0:
                return TO_STATE_UNSPECIFIED;
            case 1:
                return UNCHANGED;
            case 2:
                return TO_SUGGESTION0;
            case 3:
                return TO_SUGGESTION1_WITH_VALID_PRIMARY;
            case 4:
                return TO_SUGGESTION1_WITH_EMPTY_PRIMARY;
            case 5:
                return TO_SUGGESTION2_WITH_VALID_PRIMARY;
            case 6:
                return TO_SUGGESTION2_WITH_EMPTY_PRIMARY;
            case 7:
                return TO_SUGGESTION3_WITH_VALID_PRIMARY;
            case 8:
                return TO_SUGGESTION3_WITH_EMPTY_PRIMARY;
            case 9:
                return TO_EMPTY_WITH_VALID_PRIMARY;
            case 10:
                return TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
            case 11:
                return TO_EMPTY_WITH_EMPTY_SUGGESTIONS;
            case 12:
                return TO_EMPTY_WITH_SUGGESTIONS_DISABLED;
            case 13:
                return TO_CUSTOM_WITH_VALID_PRIMARY;
            case 14:
                return TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
            case 15:
                return TO_CUSTOM_WITH_EMPTY_SUGGESTIONS;
            case 16:
                return TO_CUSTOM_WITH_SUGGESTIONS_DISABLED;
            default:
                return null;
        }
    }

    @Override // c.b.b.M
    public final int getNumber() {
        return this.value;
    }
}
