package com.android.contacts.database;

import android.content.ContentProviderResult;
import android.content.Context;
import android.content.OperationApplicationException;
import android.os.RemoteException;
import com.android.contacts.database.SimContactDaoImpl;
import com.android.contacts.model.SimCard;
import com.android.contacts.model.SimContact;
import com.android.contacts.model.account.AccountWithDataSet;
import com.google.common.base.Function;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class SimContactDao {
    public static final Function<Context, SimContactDao> DEFAULT_FACTORY;
    private static final boolean USE_FAKE_INSTANCE = false;
    private static Function<? super Context, SimContactDao> sInstanceFactory;

    public abstract boolean canReadSimContacts();

    public abstract Map<AccountWithDataSet, Set<SimContact>> findAccountsOfExistingSimContacts(List<SimContact> list);

    public abstract SimCard getSimBySubscriptionId(int i);

    public abstract List<SimCard> getSimCards();

    public abstract ContentProviderResult[] importContacts(List<SimContact> list, AccountWithDataSet accountWithDataSet) throws RemoteException, OperationApplicationException;

    public abstract ArrayList<SimContact> loadContactsForSim(SimCard simCard);

    public abstract void persistSimStates(List<SimCard> list);

    static {
        Function<Context, SimContactDao> function = new Function<Context, SimContactDao>() { // from class: com.android.contacts.database.SimContactDao.1
            @Override // com.google.common.base.Function
            public SimContactDao apply(Context context) {
                return new SimContactDaoImpl(context);
            }
        };
        DEFAULT_FACTORY = function;
        sInstanceFactory = function;
    }

    private static SimContactDao createDebugInstance(Context context) {
        SimContactDaoImpl.DebugImpl debugImpl = new SimContactDaoImpl.DebugImpl(context);
        debugImpl.addSimCard(new SimCard("fake-sim-id1", 1, "Fake Carrier", "Card 1", "15095550101", "us").withContacts(new SimContact(1L, "Sim One", "15095550111", null), new SimContact(2L, "Sim Two", "15095550112", null), new SimContact(3L, "Sim Three", "15095550113", null), new SimContact(4L, "Sim Four", "15095550114", null), new SimContact(5L, "411 & more", "411", null)));
        debugImpl.addSimCard(new SimCard("fake-sim-id2", 2, "Carrier Two", "Card 2", "15095550102", "us").withContacts(new SimContact(1L, "John Sim", "15095550121", null), new SimContact(2L, "Bob Sim", "15095550122", null), new SimContact(3L, "Mary Sim", "15095550123", null), new SimContact(4L, "Alice Sim", "15095550124", null), new SimContact(5L, "Sim Duplicate", "15095550121", null)));
        return debugImpl;
    }

    public static synchronized SimContactDao create(Context context) {
        SimContactDao apply;
        synchronized (SimContactDao.class) {
            apply = sInstanceFactory.apply(context);
        }
        return apply;
    }

    public static synchronized void setFactoryForTest(Function<? super Context, SimContactDao> function) {
        synchronized (SimContactDao.class) {
            sInstanceFactory = function;
        }
    }

    public void persistSimState(SimCard simCard) {
        persistSimStates(Collections.singletonList(simCard));
    }
}
