defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name)
    |> String.at(0)
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    [first_name, last_name] = String.split(full_name)
    "#{initial(first_name)} #{initial(last_name)}"
  end

  def pair(full_name1, full_name2) do
    n1 = "#{initials(full_name1)}"
    n2 = "#{initials(full_name2)}"

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{n1}  +  #{n2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
    # Please implement the pair/2 function
  end
end
