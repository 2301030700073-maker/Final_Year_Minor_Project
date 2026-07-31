package org.schabi.newpipe.extractor.timeago;

import j$.time.temporal.ChronoUnit;
import j$.util.Map;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumMap;
import java.util.List;
import java.util.Map;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class PatternsHolder {
    private final Collection<String> days;
    private final Collection<String> hours;
    private final Collection<String> minutes;
    private final Collection<String> months;
    private final Collection<String> seconds;
    private final Map<ChronoUnit, Map<String, Integer>> specialCases;
    private final Collection<String> weeks;
    private final String wordSeparator;
    private final Collection<String> years;

    public PatternsHolder(String str, String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4, String[] strArr5, String[] strArr6, String[] strArr7) {
        List asList = Arrays.asList(strArr);
        List asList2 = Arrays.asList(strArr2);
        List asList3 = Arrays.asList(strArr3);
        List asList4 = Arrays.asList(strArr4);
        List asList5 = Arrays.asList(strArr5);
        List asList6 = Arrays.asList(strArr6);
        List asList7 = Arrays.asList(strArr7);
        this.specialCases = new EnumMap(ChronoUnit.class);
        this.wordSeparator = str;
        this.seconds = asList;
        this.minutes = asList2;
        this.hours = asList3;
        this.days = asList4;
        this.weeks = asList5;
        this.months = asList6;
        this.years = asList7;
    }

    public Map<ChronoUnit, Collection<String>> asMap() {
        EnumMap enumMap = new EnumMap(ChronoUnit.class);
        enumMap.put((EnumMap) ChronoUnit.SECONDS, (ChronoUnit) seconds());
        enumMap.put((EnumMap) ChronoUnit.MINUTES, (ChronoUnit) minutes());
        enumMap.put((EnumMap) ChronoUnit.HOURS, (ChronoUnit) hours());
        enumMap.put((EnumMap) ChronoUnit.DAYS, (ChronoUnit) days());
        enumMap.put((EnumMap) ChronoUnit.WEEKS, (ChronoUnit) weeks());
        enumMap.put((EnumMap) ChronoUnit.MONTHS, (ChronoUnit) months());
        enumMap.put((EnumMap) ChronoUnit.YEARS, (ChronoUnit) years());
        return enumMap;
    }

    public Collection<String> days() {
        return this.days;
    }

    public Collection<String> hours() {
        return this.hours;
    }

    public Collection<String> minutes() {
        return this.minutes;
    }

    public Collection<String> months() {
        return this.months;
    }

    public void putSpecialCase(ChronoUnit chronoUnit, String str, int i) {
        ((Map) Map.EL.computeIfAbsent(this.specialCases, chronoUnit, new Utils$$ExternalSyntheticLambda1(17))).put(str, Integer.valueOf(i));
    }

    public Collection<String> seconds() {
        return this.seconds;
    }

    public java.util.Map<ChronoUnit, java.util.Map<String, Integer>> specialCases() {
        return this.specialCases;
    }

    public Collection<String> weeks() {
        return this.weeks;
    }

    public String wordSeparator() {
        return this.wordSeparator;
    }

    public Collection<String> years() {
        return this.years;
    }
}
