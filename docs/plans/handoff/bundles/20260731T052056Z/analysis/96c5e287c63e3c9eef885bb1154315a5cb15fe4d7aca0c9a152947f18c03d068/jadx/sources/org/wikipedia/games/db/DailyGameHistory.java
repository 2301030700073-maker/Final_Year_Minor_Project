package org.wikipedia.games.db;

import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DailyGameHistory {
    public final int currentQuestionIndex;
    public final int day;
    public final String gameData;
    public final int gameName;
    public final int id;
    public final String language;
    public final int month;
    public final int playType;
    public final int score;
    public final int status;
    public final int year;

    public DailyGameHistory(int i, int i2, String str, int i3, int i4, int i5, int i6, int i7, String str2, int i8, int i9) {
        str.getClass();
        this.id = i;
        this.gameName = i2;
        this.language = str;
        this.year = i3;
        this.month = i4;
        this.day = i5;
        this.score = i6;
        this.playType = i7;
        this.gameData = str2;
        this.status = i8;
        this.currentQuestionIndex = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DailyGameHistory)) {
            return false;
        }
        DailyGameHistory dailyGameHistory = (DailyGameHistory) obj;
        return this.id == dailyGameHistory.id && this.gameName == dailyGameHistory.gameName && Intrinsics.areEqual(this.language, dailyGameHistory.language) && this.year == dailyGameHistory.year && this.month == dailyGameHistory.month && this.day == dailyGameHistory.day && this.score == dailyGameHistory.score && this.playType == dailyGameHistory.playType && Intrinsics.areEqual(this.gameData, dailyGameHistory.gameData) && this.status == dailyGameHistory.status && this.currentQuestionIndex == dailyGameHistory.currentQuestionIndex;
    }

    public final int hashCode() {
        int m = (((((((((Animation.CC.m(((this.id * 31) + this.gameName) * 31, 31, this.language) + this.year) * 31) + this.month) * 31) + this.day) * 31) + this.score) * 31) + this.playType) * 31;
        String str = this.gameData;
        return ((((m + (str == null ? 0 : str.hashCode())) * 31) + this.status) * 31) + this.currentQuestionIndex;
    }

    public final String toString() {
        StringBuilder m = Animation.CC.m(this.id, this.gameName, "DailyGameHistory(id=", ", gameName=", ", language=");
        m.append(this.language);
        m.append(", year=");
        m.append(this.year);
        m.append(", month=");
        m.append(this.month);
        m.append(", day=");
        m.append(this.day);
        m.append(", score=");
        m.append(this.score);
        m.append(", playType=");
        m.append(this.playType);
        m.append(", gameData=");
        m.append(this.gameData);
        m.append(", status=");
        m.append(this.status);
        m.append(", currentQuestionIndex=");
        return Modifier.CC.m(m, this.currentQuestionIndex, ")");
    }
}
