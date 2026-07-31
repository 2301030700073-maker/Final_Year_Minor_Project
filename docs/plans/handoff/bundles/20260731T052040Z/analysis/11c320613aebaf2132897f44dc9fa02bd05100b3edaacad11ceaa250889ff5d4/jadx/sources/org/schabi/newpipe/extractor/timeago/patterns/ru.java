package org.schabi.newpipe.extractor.timeago.patterns;

import org.schabi.newpipe.extractor.timeago.PatternsHolder;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ru extends PatternsHolder {
    private static final String WORD_SEPARATOR = " ";
    private static final String[] SECONDS = {"секунд", "секунду", "секунды", "только что"};
    private static final String[] MINUTES = {"минут", "минуту", "минуты"};
    private static final String[] HOURS = {"час", "часа", "часов"};
    private static final String[] DAYS = {"день", "дней", "дня"};
    private static final String[] WEEKS = {"Неделю", "недели"};
    private static final String[] MONTHS = {"месяц", "месяца", "месяцев"};
    private static final String[] YEARS = {"Год", "года", "лет"};
    private static final ru INSTANCE = new ru();

    private ru() {
        super(WORD_SEPARATOR, SECONDS, MINUTES, HOURS, DAYS, WEEKS, MONTHS, YEARS);
    }

    public static ru getInstance() {
        return INSTANCE;
    }
}
