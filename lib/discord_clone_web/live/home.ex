defmodule DiscordCloneWeb.HomeLive do
  use DiscordCloneWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <link rel="stylesheet" href="https://unpkg.com/98.css@0.1.4/build/98.css" />
    <div class="discord-container">
      <!-- Title Bar -->
      <div class="title-bar">
        <div class="title-bar-text">Discord - Channel Name</div>
        <div class="title-bar-controls">
          <button aria-label="Minimize"></button>
          <button aria-label="Maximize"></button>
          <button aria-label="Close"></button>
        </div>
      </div>
      <!-- main content -->
      <div class="main-content">
        <!-- server list -->
        <div class="server-list-container">
          <ul class="server-list">
            <!-- Default -->
            <li>
              <!-- Abbr is the tooltip-->
              <li>
                <abbr title="FHICT Accordo Account">
                  <button class="btn">
                    <!-- Abbr is the tooltip-->
                    <img
                      src="../../../assets/logo.png" />
                  </button>
                </abbr>
              </li>
              <abbr title="Add a Server">
                <button class="btn">
                  <img
                    src="https://cdn-icons-png.flaticon.com/256/3917/3917099.png" />
                </button>
              </abbr>

            </li>
            <!-- Personal Servers-->
            <div class="personal-servers">
              <li>
                <abbr title="FHICT Accordo Account">
                  <button class="btn">
                    <!-- Abbr is the tooltip-->
                    <img
                      src="https://cdn.iconscout.com/icon/premium/png-256-thumb/verified-server-1-1135959.png?f=webp&w=256" />
                  </button>
                </abbr>
              </li>
            </div>
          </ul>
        </div>
        <!-- Channel list -->
        <div class="channel-list">
          <ul class="tree-view">
            <div class="general-channels">
              <!-- Welcome channels-->
              <li>
                <li> -- -- -- -- -- -- -- -- -- -- --</li>

                <li>Official FHICT Discord Clone Server</li>

                <li> -- -- -- -- -- -- -- -- -- -- --</li>

                <li>

                  <ul>
                    <!-- selected channel-->
                    <div class="selection-channel"> <a href="#"
                        class="fill-selected-channel">
                        <li>Welcome</li>
                      </a>
                    </div>

                    <li>Rules</li>
                    <li>System messages</li>
                  </ul>
                </li>
              </li>
            </div>
            <!-- Other channels-->
            <div class="other-channels">

              <br>
              <li>
                <details open>
                  <summary>Main channel</summary>
                  <ul>
                    <li>Sub channel name</li>

                  </ul>
                </details>
              </li>
              <br>
              <li>
                <details open>
                  <summary>Main channel</summary>
                  <ul>
                    <li>Sub channel name</li>

                  </ul>
                </details>
              </li>

            </div>
          </ul>
        </div>
        <!-- Chat window -->
        <div class="chat-container">
          <div class="window-body">
            <div class="chat-window">
              <div class="message">
                <strong>User1:</strong> Hello, world!
              </div>
              <div class="message">
                <strong>User2:</strong> Hi there!
              </div>
              <div class="message">
                <strong>User3:</strong> How's it going?
              </div>
            </div>
            <!-- Chat input -->
            <div class="chat-input">
              <input type="text" class="input" placeholder="Type a message...">
            </div>
          </div>
        </div>
        <!-- Friends tab -->
        <div class="users-tab">
          <div class="users-container">
              <!-- Role divisions-->
              <ul>
                <li>
                 <p>-- --  Admins -- -- -- -- -- --
                   <small>Online: 1</small>
                 </p>
                </li>
                <li>

                  <button class="btn user-btn">
                    <div class="user-frame-details">
                    <img class ="user-frame-icon"
                      src="icons/w2k_6.png" />asd</div>
                  </button>
                </li>
              </ul>
              <ul>
                <li>
                 <p>-- --  Users -- -- -- -- -- --
                   <small>Online: 3</small>
                 </p>
                </li>
                <li>

                  <button class="btn user-btn">
                    <div class="user-frame-details">
                    <img class ="user-frame-icon"
                      src="https://cdn-icons-png.flaticon.com/256/3917/3917099.png" />asd</div>
                  </button>
                </li>
                <li>

                  <button class="btn user-btn">
                    <div class="user-frame-details">
                    <img class ="user-frame-icon"
                      src="https://cdn-icons-png.flaticon.com/256/3917/3917099.png" />asd</div>
                  </button>
                </li>
                <li>

                  <button class="btn user-btn">
                    <div class="user-frame-details">
                    <img class ="user-frame-icon"
                      src="https://cdn-icons-png.flaticon.com/256/3917/3917099.png" />asd</div>
                  </button>
                </li>

              </ul>
            </div>
          </div>
        </div>
      </div>

"""
  end
end
