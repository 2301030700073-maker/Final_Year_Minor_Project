package kotlinx.datetime.format;

import kotlinx.datetime.internal.DecimalFraction;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface TimeFieldContainer {
    AmPmMarker getAmPm();

    DecimalFraction getFractionOfSecond();

    Integer getHour();

    Integer getHourOfAmPm();

    Integer getMinute();

    Integer getSecond();

    void setAmPm(AmPmMarker amPmMarker);

    void setFractionOfSecond(DecimalFraction decimalFraction);

    void setHour(Integer num);

    void setHourOfAmPm(Integer num);

    void setMinute(Integer num);

    void setSecond(Integer num);
}
