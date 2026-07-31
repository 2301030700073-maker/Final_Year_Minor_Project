package org.ocpsoft.prettytime;

import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Locale;
import org.ocpsoft.prettytime.impl.ResourcesTimeFormat;
import org.ocpsoft.prettytime.impl.ResourcesTimeUnit;
import org.ocpsoft.prettytime.units.Century;
import org.ocpsoft.prettytime.units.Day;
import org.ocpsoft.prettytime.units.Decade;
import org.ocpsoft.prettytime.units.Hour;
import org.ocpsoft.prettytime.units.JustNow;
import org.ocpsoft.prettytime.units.Millennium;
import org.ocpsoft.prettytime.units.Millisecond;
import org.ocpsoft.prettytime.units.Minute;
import org.ocpsoft.prettytime.units.Month;
import org.ocpsoft.prettytime.units.Second;
import org.ocpsoft.prettytime.units.Week;
import org.ocpsoft.prettytime.units.Year;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PrettyTime {
    public volatile List cachedUnits;
    public volatile Locale locale = Locale.getDefault();
    public final ConcurrentHashMap units = new ConcurrentHashMap();

    public PrettyTime() {
        JustNow justNow = new JustNow();
        justNow.maxQuantity = 60000L;
        addUnit(justNow);
        Millisecond millisecond = new Millisecond();
        millisecond.millisPerUnit = 1L;
        addUnit(millisecond);
        Second second = new Second();
        second.millisPerUnit = 1000L;
        addUnit(second);
        Minute minute = new Minute();
        minute.millisPerUnit = 60000L;
        addUnit(minute);
        Hour hour = new Hour();
        hour.millisPerUnit = 3600000L;
        addUnit(hour);
        Day day = new Day();
        day.millisPerUnit = 86400000L;
        addUnit(day);
        Week week = new Week();
        week.millisPerUnit = 604800000L;
        addUnit(week);
        Month month = new Month();
        month.millisPerUnit = 2629743830L;
        addUnit(month);
        Year year = new Year();
        year.millisPerUnit = 31556925960L;
        addUnit(year);
        Decade decade = new Decade();
        decade.millisPerUnit = 315569259747L;
        addUnit(decade);
        Century century = new Century();
        century.millisPerUnit = 3155692597470L;
        addUnit(century);
        Millennium millennium = new Millennium();
        millennium.millisPerUnit = 31556926000000L;
        addUnit(millennium);
    }

    public final void addUnit(ResourcesTimeUnit resourcesTimeUnit) {
        ResourcesTimeFormat resourcesTimeFormat = new ResourcesTimeFormat(resourcesTimeUnit);
        this.cachedUnits = null;
        this.units.put(resourcesTimeUnit, resourcesTimeFormat);
        resourcesTimeFormat.m860setLocale(this.locale);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String formatUnrounded(j$.time.OffsetDateTime r20) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ocpsoft.prettytime.PrettyTime.formatUnrounded(j$.time.OffsetDateTime):java.lang.String");
    }

    public final String toString() {
        return "PrettyTime [reference=null, locale=" + this.locale + "]";
    }
}
