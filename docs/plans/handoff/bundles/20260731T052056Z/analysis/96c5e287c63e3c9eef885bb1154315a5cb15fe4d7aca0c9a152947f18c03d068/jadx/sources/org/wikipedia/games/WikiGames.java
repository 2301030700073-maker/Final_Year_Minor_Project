package org.wikipedia.games;

import androidx.room.Room;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.SynchronizedLazyImpl;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WikiGames {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ WikiGames[] $VALUES;
    public static final WikiGames WHICH_CAME_FIRST;
    private final List<String> baseLanguages;
    private final int titleRes = R.string.on_this_day_game_title;
    private final Lazy supportLanguages$delegate = new SynchronizedLazyImpl(new WikiGames$$ExternalSyntheticLambda0(0, this));

    static {
        WikiGames wikiGames = new WikiGames(Room.listOf((Object[]) new String[]{"en", "de", "fr", "es", "pt", "ru", "ar", "tr", "zh"}));
        WHICH_CAME_FIRST = wikiGames;
        WikiGames[] wikiGamesArr = {wikiGames};
        $VALUES = wikiGamesArr;
        $ENTRIES = new EnumEntriesList(wikiGamesArr);
    }

    public WikiGames(List list) {
        this.baseLanguages = list;
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static final ArrayList supportLanguages_delegate$lambda$0(WikiGames wikiGames) {
        List<String> list = wikiGames.baseLanguages;
        list.getClass();
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            List languageVariants = Jsoup.getInstance().getLanguageState().getLanguageVariants(str);
            if (languageVariants == null) {
                languageVariants = Room.listOf(str);
            }
            CollectionsKt.addAll(arrayList, languageVariants);
        }
        return arrayList;
    }

    public static WikiGames valueOf(String str) {
        return (WikiGames) Enum.valueOf(WikiGames.class, str);
    }

    public static WikiGames[] values() {
        return (WikiGames[]) $VALUES.clone();
    }

    public final List getSupportLanguages() {
        return (List) this.supportLanguages$delegate.getValue();
    }

    public final int getTitleRes() {
        return this.titleRes;
    }

    public final boolean isLangSupported(String... strArr) {
        for (String str : strArr) {
            if (getSupportLanguages().contains(str)) {
                return true;
            }
        }
        return false;
    }
}
